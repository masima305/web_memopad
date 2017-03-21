class HomeController < ApplicationController
    
    def index
    end

    def memolist
        @memolist = Memo.all
        
    end

    def menu
    end
    
    def reading
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
    end
    
    def mailer
    end
    
    def revise
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
    
end
