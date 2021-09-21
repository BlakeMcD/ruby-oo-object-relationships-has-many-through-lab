class Patient

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    #Appointment gets initialized with date, patient, and doctor (in that order)
    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |app|
            app.patient == self
        end
    end

    def doctors
        appointments.map do |app|
            app.doctor   
        end
    end





end
