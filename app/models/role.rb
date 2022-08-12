class Role < ActiveRecord::Base
    has_many  :auditions

    def actors
        self.auditions.map do |auditon|
            auditon.actor
        end
    end

    def locations
        self.auditions.map do |auditon|
            auditon.location
        end
    end

    def lead
       condition = self.auditions.where 'hired = ?', true
       condition == [] ? "no actor has been hired for this role" : condition.first
    end

    def understudy
        condition = self.auditions.where 'hired = ?', true
       condition == [] ? "no actor has been hired for this role" : condition.second
    end
end