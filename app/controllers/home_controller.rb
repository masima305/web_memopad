class HomeController < ApplicationController
    
    def forbid
    end
    
    def memolist
        if user_signed_in?
            @memolist = Memo.order('date DESC').all
        else
            redirect_to 'user_signed_in'
        end
    end

    def menu
        if user_signed_in?
            @memolist = Memo.where(:favorite => 1).order('date DESC')
        else
            redirect_to '/users/sign_in'
        end
    end
    
    def reading
        if user_signed_in?
            @spe_memo = Memo.find(params[:id])
        else
            redirect_to '/users/sign_in'
        end
    end
    
    def setting
        if user_signed_in?
            @email = current_user.email
            @subjectList = Subject.all
        else
            redirect_to '/users/sign_in'
        end
    end

    def setadd
        if user_signed_in?
            newsub = Subject.new
            newsub.author = current_user.email
            newsub.category = params[:newsub]
            newsub.save
            redirect_to "/home/setting"
        else
            redirect_to '/users/sign_in'
        end
    end
    
    def setdel
        if user_signed_in?
            delsub = Subject.find(params[:id])
            if current_user.email = delsub.author
                delsub.destroy
                redirect_to "/home/setting"
            else
                redirect_to "/home/forbid"
            end
        else
            redirect_to '/users/sign_in'
        end
    end

    def writing
        if user_signed_in?
            @subjectList = Subject.all
        else
            redirect_to '/users/sign_in'
        end
    end
    
    def deleting
        if user_signed_in?
            @one_memo = Memo.find(params[:id])
            if current_user.email = @one_memo.author
                @one_memo.destroy
                redirect_to "/home/memolist"
            else
                redirect_to "/home/forbid"
            end
        else
            redirect_to '/users/sign_in'
        end
    end
    
    def mailer
    end
    
    def revise
        if user_signed_in?    
            @subjectList = Subject.all
            @one_memo = Memo.find(params[:id])
        else
            redirect_to '/users/sign_in'
        end
    end
    
    def memoWrite
        if user_signed_in?
            newMemo = Memo.new
            newMemo.author = current_user.email
            newMemo.title = params[:title]
            newMemo.content = params[:content]
            newMemo.favorite = params[:favorite]
            newMemo.category = params[:category]
            newMemo.date = params[:date]
            newMemo.save
            redirect_to "/home/memolist"
        else
            redirect_to '/users/sign_in'
        end
    end
    
    def memoReWrite
        if user_signed_in?
            reMemo = Memo.find(params[:id])
            reMemo.title = params[:title]
            reMemo.content = params[:content]
            reMemo.favorite = params[:favorite]
            reMemo.category = params[:category]
            reMemo.date = params[:date]
            reMemo.save
            redirect_to "/home/reading/"+params[:id]
        else
            redirect_to '/users/sign_in'
        end
    end
    
    def searchlist
        if user_signed_in?
            @keyword= params[:keyword]
            @serMemo_ti= Memo.where("title like ?", "%#{@keyword}%")
            @serMemo_con= Memo.where("content like ?", "%#{@keyword}%")
        else
            redirect_to '/users/sign_in'
        end
    end
end
