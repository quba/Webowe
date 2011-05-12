class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    
       user ||= Klient.new # jakos trzeba zrobic konto goscia, nie? :D
       if defined?(user.type)
         if user.type == "Admin" # admin - moze wszsytko ;)
              can :manage, :all
         else # pracownik
              can :manage, Zamowienie do |zamowienie| # zarzadza tylko zamowieniami pryzpisanymi do niego
                 zamowienie.try(:owner) == user
              end
         end
       elsif defined?(user.email) # zarejestrowany klient
         can :read, Lek # moze przegladać leki
         can :create, Zamowienie # moze zlozyc zamowienie
         can :new, Zamowienie # formularz skladania zamowienia
         can :manage, Zamowienie do |zamowienie| # moze wszystko ze swoim wlasnym zamowieniem
            zamowienie.try(:owner) == user
         end
       else # konto goscia
            # mozna by tu wpisac can :create, Klient ale po co, skoro tam zostawimy domyslne ustawienia dla devise,
            # czyli kazdy po prostu moze swoje konto utworzyc i nim zarzadzac prze /klients
       end
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
