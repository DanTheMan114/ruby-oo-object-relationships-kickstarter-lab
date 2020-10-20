class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def helper
        ProjectBacker.all.select{|pb|pb.project == self}
    end
    def backers
        helper.map{|pb|pb.backer}
    end


end
