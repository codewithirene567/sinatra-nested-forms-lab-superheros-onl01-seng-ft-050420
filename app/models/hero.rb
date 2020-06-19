class Hero

attr_accessor :name, :power, :bio

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
  end

  def self.all
    
  end
end
