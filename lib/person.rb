# your code goes here
class Person
     attr_reader :name, :happiness, :hygiene
     attr_accessor :bank_account
    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end
    def happiness=(value)
        if value >= 0 && value <= 10
            @happiness = value
        elsif value < 0
            @happiness = 0
        elsif value > 10
            @happiness = 10
        end
    end
    def hygiene=(value)
        if value > 0 && value <=10
            @hygiene = value
        elsif
            value < 0
              @hygiene = 0
        elsif
            value >10 
             @hygiene = 10
        end
    end 
    def happy?
        # use self to access the value of happiness in our new instance
        # then use ternary condition for readability
        self.happiness > 7 ? true : false
    end
    def clean?
        # use self again
        self.hygiene > 7 ? true : false
    end
    def get_paid (pay_any_money)
        self.bank_account += pay_any_money
        "all about the benjamins"
    end
    def take_bath
        # to make a person cleaner you take the value of their hygien
        self.hygiene +=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        # use self to get their hygiene
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    def call_friend (my_friend)
        friend = Person.new(my_friend)
        self.happiness += 3
        
         "Hi #{friend.name}! It's #{self.name}. How are you?"
        

    end
    def start_conversation(friend, topic)
        new_friend = Person.new(friend)
        if topic == "politics"
            self.happiness -= 2
            new_friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            new_friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end






end
vincent = Person.new("Vincent")
vincent.call_friend  "Alex"