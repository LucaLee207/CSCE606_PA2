module MoviesHelper

    def sort_link(sort:, label:)
        
        if sort == params[:sort]
          if params[:direction] == "asc"
          
            link_to(label, sort: sort, direction: "desc" )
            
          else
            
            link_to(label, sort: sort, direction: "asc" )
            
          end
        else
          
          link_to(label, sort:sort, direction: "asc")
          
        end
      end
    
    def clear_session()
      session[:t] = 0
    end

    def store_session()
      session[:sort] = params[:sort]
      session[:direction] = params[:direction]
      
    end 

    def up_down_triangle(sort:)
        if params[:sort] == sort

            if params[:direction] == "asc"
                "▲"
            elsif params[:direction] == "desc"
                "▼"
            end
          
        end
    end

    
end

