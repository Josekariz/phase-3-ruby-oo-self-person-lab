# your code goes here
class Person
  
    attr_reader :name
    attr_accessor :bank_account, :happiness,:hygiene
    def initialize(name)
        @name = name
      
      #>>>>>>>>bank account
      @bank_account = 25

        def bank_account=(value)
        @bank_account =value
        end
        #>>>>>>>>>>hygiene
       @hygiene = 8
        def hygiene=(value)
            if(value > 10)
                @hygiene = 10
            elsif(value < 0)
                @hygiene = 0
            else
                @hygiene = value
            end
        end
        #>>>>>>>>>>>>>>>happiness
      @happiness=8
        def happiness=(value)
            if(value>10)
              @happiness =10
              elsif (value < 0)
                @happiness = 0
              else @happiness = value
            end
        end

    # if a person is clean
    def clean?
      hygiene > 7 ? true:false
    end
    # if a person is happy
    def happy?
      happiness >7 ? true:false
    end
  
    #accepts a salary amount and adds this to the person's bank account. 
    def get_paid(amount)
     self.bank_account += amount
       "all about the benjamins"
    end

    #take a bath
    def take_bath
      self.hygiene +=4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    #work out
    def work_out
      self.happiness +=2
      self.hygiene -=3
      "♪ another one bites the dust ♫"
    end

    #call a friend
    def call_friend(friend)
     self.happiness +=3
     friend.happiness +=3
     "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    #start_conversation(friend, topic)
    def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -=2
      friend.happiness -=2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness+=1
      friend.happiness+=1
      "blah blah sun blah rain"
    else "blah blah blah blah blah"
    end
    end
  #end for initilize  
  end
#end of class  
end 