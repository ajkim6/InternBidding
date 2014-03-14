Firm.destroy_all
firm_catalog = [    { :firm_name => "McKinsey",
                      :firm_logo => 'http://spotfire.tibco.com/blog/wp-content/uploads/Data-Analytics-Talent-Shortage-Predicted.gif',
                    },
                    { :firm_name => "BCG",
                      :firm_logo => 'http://upload.wikimedia.org/wikipedia/fr/f/f6/BCG_logo.gif',
                    },
                    { :firm_name => "Deloitte",
                      :firm_logo => 'http://www.clusterforlogistics.lu/media/cache/289_resized_320_320_100_51fa0f08c6d41_deloitte_logo.jpg',
                    },
                    { :firm_name => "Bain",
                      :firm_logo => "http://goldenkey.org.za/sites/default/files/Bain%20%26%20Co%20Logo.jpg?1363344945",
                    },
                    { :firm_name => "Apple",
                      :firm_logo => "http://static1.i4u.com/sites/default/files/imagecache/main_image_fullwidth/images/2011/05/apple-logo-wide.jpg",
                    },
                    { :firm_name => "Microsoft",
                      :firm_logo => "http://download.microsoft.com/download/B/1/0/B102AB56-BB7E-4BCF-9D80-1278A029F95A/MSFT_logo_png.png",
                    },
                    { :firm_name => "United Airlines",
                      :firm_logo => "http://static1.wikia.nocookie.net/__cb20100812060654/logopedia/images/0/0a/United_Airlines_2010.svg",
                    }
                  ]

firm_catalog.each do |firm_info|
  f = Firm.new
  f.firm_name = firm_info[:firm_name]
  f.firm_logo = firm_info[:firm_logo]

  f.save
end
puts "There are now #{Firm.count} firms in the catalog."



Internship.destroy_all
job_catalog = [     { :firm_id => Firm.find_by(:firm_name => "McKinsey").id,
                      :internship_title => "Associate",
                      :internship_description => "Operations Consulting Position",
                      :internship_location => "Chicago",
                    },
                    { :firm_id => Firm.find_by(:firm_name => "BCG").id,
                      :internship_title => "Associate",
                      :internship_description => "Media Consulting Position",
                      :internship_location => "Los Angeles",
                    },
                    { :firm_id => Firm.find_by(:firm_name => "Deloitte").id,
                      :internship_title => "Senior Consultant",
                      :internship_description => "Finance Consulting Position",
                      :internship_location =>  "New York",
                    },
                    { :firm_id => Firm.find_by(:firm_name => "Bain").id,
                      :internship_title => "Associate",
                      :internship_description => "General Strategy Consulting Position",
                      :internship_location => "Miami",
                    },
                    { :firm_id => Firm.find_by(:firm_name => "Apple").id,
                      :internship_title => "Senior Product Manager",
                      :internship_description => "Product Manager Position",
                      :internship_location => "San Francisco",
                    },
                    { :firm_id => Firm.find_by(:firm_name => "Microsoft").id,
                      :internship_title => "Supply Chain Analyst",
                      :internship_description => "Supply Chain Position",
                      :internship_location => "Seattle",
                    },
                    { :firm_id => Firm.find_by(:firm_name => "United Airlines").id,
                      :internship_title => "Senior Logistics Analyst",
                      :internship_description => "Logistics Position",
                      :internship_location => "Chicago",
                    }
                  ]

job_catalog.each do |job_info|
  j = Internship.new
  j.firm_id = job_info[:firm_id]
  j.internship_title = job_info[:internship_title]
  j.internship_description = job_info[:internship_description]
  j.internship_location = job_info[:internship_location]

  j.save
end
puts "There are now #{Internship.count} jobs in the catalog."



User.destroy_all
user_list = [       {
                      :user_firstname => "Andrew",
                      :user_lastname => "Kim",
                      :user_email => "akim2014@kellogg.northwestern.edu",
                      :user_password => "akim2014",
                      :user_profile => "https://www.linkedin.com/in/andrewkim2",
                    }

                  ]

user_list.each do |user_info|
  u = User.new
  u.user_email = user_info[:user_email]
  u.user_firstname = user_info[:user_firstname]
  u.user_lastname = user_info[:user_lastname]
  u.user_password = user_info[:user_password]
  u.user_profile = user_info[:user_profile]

  u.save
end
puts "There are now #{User.count} users in the catalog."



Firmuser.destroy_all
firmuser_list = [   { :firm_id => Firm.find_by(:firm_name => "McKinsey").id,
                      :firmuser_password => "McKinsey",
                    }

                  ]

firmuser_list.each do |fuser_info|
  fu = Firmuser.new
  fu.firm_id = fuser_info[:firm_id]
  fu.firmuser_password = fuser_info[:firmuser_password]

  fu.save
end
puts "There are now #{Firmuser.count} firm users in the catalog."



Review.destroy_all
review_list = [     { :review_body => "Great Firm!",
                      :user_id => User.find_by(:user_email => "akim2014@kellogg.northwestern.edu").id,
                      :firm_id => Firm.find_by(:firm_name => "McKinsey").id,
                    },
                    { :review_body => "Lifetime Experience!",
                      :user_id => User.find_by(:user_email => "akim2014@kellogg.northwestern.edu").id,
                      :firm_id => Firm.find_by(:firm_name => "BCG").id,
                    },
                    { :review_body => "It was just ok...",
                      :user_id => User.find_by(:user_email => "akim2014@kellogg.northwestern.edu").id,
                      :firm_id => Firm.find_by(:firm_name => "Bain").id,
                    }
                  ]

review_list.each do |review_info|
  re = Review.new
  re.review_body = review_info[:review_body]
  re.user_id = review_info[:user_id]
  re.firm_id = review_info[:firm_id]

  re.save
end
puts "There are now #{Review.count} reviews in the catalog."



