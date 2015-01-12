module RepliesHelper
	def guest_in(guest)
		session[:guest] = guest.to_json
		self.current_guest = guest  #等於 current_guest=(user)
	end

	def guest_in?
		!current_guest.nil?
	end

    def current_guest=(guest)
        @current_guest = guest
    end
    
    def current_guest
    	if session[:guest].nil?
    		@current_guest = nil
    	else
    		@current_guest ||= ActiveSupport::JSON.decode(session[:guest]).symbolize_keys
    	end
    end

	def guest_out
		self.current_user = nil
		session.delete(:guest)
	end

	def reply_with_guest_data
		if guest_in? 
			Reply.new(current_guest)
		else
			Reply.new()
		end
	end
end
