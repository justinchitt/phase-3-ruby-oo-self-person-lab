# your code goes here
require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    def happiness=(value)
        if (value <= 10 && value >= 0)
            @happiness = value
        elsif (value > 10)
            @happiness = 10
        else
            @happiness = 0
        end
    end
    def hygiene=(value)
        if (value <= 10 && value >= 0)
            @hygiene = value
        elsif (value > 10)
            @hygiene = 10
        else
            @hygiene = 0
        end
    end
    def happy?
        if(self.happiness > 7) 
            true
        else
            false
        end
    end
    def clean?
        if(self.hygiene > 7) 
            true
        else
            false
        end
    end
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        "♪ another one bites the dust ♫"
    end
    def call_friend(instance)
        self.happiness = self.happiness + 3
        instance.happiness = instance.happiness + 3
        "Hi #{instance.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(instance, topic)
        if (topic == "politics")
            self.happiness = self.happiness - 2
            instance.happiness = instance.happiness - 2
            'blah blah partisan blah lobbyist'
        elsif (topic == "weather")
            self.happiness = self.happiness + 1
            instance.happiness = instance.happiness + 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end
end

something = Person.new("justin", 10, 9, 1)
something.happiness = 11



