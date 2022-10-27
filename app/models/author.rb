class Author < ApplicationRecord
    attr_accessor :first_name, :last_name, :homepage
    
    def name
        return first_name + ' ' + last_name
    end


    # def initialize(first_name, last_name, homepage)
    #     @first_name = first_name
    #     @last_name = last_name
    #     @homepage = homepage
    # end

end