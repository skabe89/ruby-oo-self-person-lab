# your code goes here

class Person
    attr_accessor :bank_account


    def initialize(name, bank_account = 25, happy = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
            if happy > 10
                @happiness = 10
            elsif happy < 0
                @happiness = 0
            else 
                @happiness = happy
            end

            if hygiene > 10
                @hygiene = 10
            elsif happy < 0
                @hygiene = 0
            else 
                @hygiene = hygiene
            end
        
    end

    def name
        @name
    end

    def bank_account=(amount)
        @bank_account = amount
    end

    def happiness=(happy)
        if happy > 10
            @happiness = 10
        elsif happy < 0
            @happiness = 0
        else 
            @happiness = happy
        end
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else 
            @hygiene = hygiene
        end
    end

    def hygiene
        @hygiene
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(@happiness + 3)
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, convo)
        if convo == "politics"
            [self, friend].each{|i| i.happiness=(i.happiness - 2)}
            "blah blah partisan blah lobbyist"
        elsif convo == "weather"
            [self, friend].each{|i| i.happiness=(i.happiness + 1)}
            "blah blah sun blah rain"
        else    
            "blah blah blah blah blah"
        end
    end

end
