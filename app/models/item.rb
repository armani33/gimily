class Item < ApplicationRecord
  has_many :groupe_baskets

  URL = ["https://www.article.com/product/3539/crescent-white-floor-lamp?forceCurrencyId=2&gdffi=95849d5466494c5eaa47a1d7fc5c8083&gdfms=5B188FF9E433449AB0188DBFE85BF7FC?artcl_campignID=857729892&artcl_network=g&artcl_adgroupid=51933533428&artcl_keyword=&artcl_source=google&gclid=Cj0KCQiAgMPgBRDDARIsAOh3uyILXyQ7EOF49wGZt0Pqatu7gUBjuo55EJXqLQID4VVZ2fwbChvEmH4aAoEWEALw_wcB"].freeze
end
