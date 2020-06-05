class Person
    @@min = 0 
    @@max = 10

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end
  
    def happiness=(happy)
        @happiness = happy
        if happy > 10
            @happiness = @@max
        elsif happy < 0
            @happiness = @@min
        end

    end

    def hygiene=(clean_lvl)
        @hygiene = clean_lvl
        if clean_lvl > 10
            @hygiene = @@max
        elsif clean_lvl < 0
            @hygiene = @@min
        end

    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
    end

     def clean?
         if self.hygiene > 7
            return true
         else
             return false
        end
     end

     def get_paid(value)
        @bank_account = self.bank_account + value
        return "all about the benjamins"
     end

     def take_bath
        self.hygiene = self.hygiene + 4 
        return "♪ Rub-a-dub just relaxing in the tub ♫"
     end

     def work_out
        self.hygiene = self.hygiene - 3
        self.happiness =self.happiness + 2
        return "♪ another one bites the dust ♫"

     end

     def call_friend(friend)
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
     end

     def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = self.happiness - 2
            friend.happiness = friend.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            friend.happiness = friend.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

     end
        
end
