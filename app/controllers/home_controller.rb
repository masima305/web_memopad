class HomeController < ApplicationController
    
    def index
    end

    def memolist
        @memolist = Memo.order('date DESC').all
        
    end

    def menu
        @memolist = Memo.where(:favorite => 1).order('date DESC')
    end
    
    def reading
        @spe_memo = Memo.find(params[:id])
        
        
    end
    
    def setting
        @subjectList = Subject.all
    end

    def setadd
        newsub = Subject.new
        
        newsub.category = params[:newsub]
        newsub.save
        redirect_to "/home/setting"
    end
    
    def setdel
        delsub = Subject.find(params[:id])
        delsub.destroy
        redirect_to "/home/setting"
    end

    def writing
        @subjectList = Subject.all
    end
    
    def deleting
        @one_memo = Memo.find(params[:id])
        @one_memo.destroy
        redirect_to "/home/memolist"
    end
    
    def mailer
    end
    
    def revise
        @subjectList = Subject.all
        @one_memo = Memo.find(params[:id])
    end
    
    def memoWrite
        newMemo = Memo.new
        newMemo.title = params[:title]
        newMemo.content = params[:content]
        newMemo.favorite = params[:favorite]
        newMemo.category = params[:category]
        newMemo.date = params[:date]
        newMemo.save
        
        redirect_to "/home/memolist"
    end
    
    def memoReWrite
        reMemo = Memo.find(params[:id])
        reMemo.title = params[:title]
        reMemo.content = params[:content]
        reMemo.favorite = params[:favorite]
        reMemo.category = params[:category]
        reMemo.date = params[:date]
        reMemo.save
        
        redirect_to "/home/reading/"+params[:id]
    end
    
    def searchlist
        
        @keyword= params[:keyword]
        @serMemo_ti= Memo.where("title like ?", "%#{@keyword}%")
        @serMemo_con= Memo.where("content like ?", "%#{@keyword}%")
        
    end
end
