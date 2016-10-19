class AuthenticateUser
    prepend SimpleCommand
    
    def initialize(email, password, phone_number)
        @phone_number = phone_number
        @email = email
        @password = password
       
    end
    
    def call
        JsonWebToken.encode(account_id: account.id) if account
    end
    
    private
    
    attr_accessor :email, :password, :phone_number
    
    def account
        account = Account.find_by_email(email)
        return account if account && account.authenticate(password)
        
        account = Account.find_by_phone_number(phone_number)
        return account if account && account.authenticate(password)
        
        errors.add :user_authentication, 'invalid credentials'
        nil
    end
end
