class Doctor

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
    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |app|
            app.doctor == self
        end
    end

    def patients
        appointments.map do |app|
            app.patient    
        end
    end

end
