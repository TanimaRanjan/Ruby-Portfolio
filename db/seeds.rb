3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end


10.times do |blog|
    Blog.create!(
        title:"My Blog Post #{blog}",
        body:"Lemon drops cheesecake danish cupcake halvah dragée tart. Lemon drops macaroon icing pastry chocolate bar chocolate bar sweet. Gingerbread cupcake wafer. Macaroon oat cake candy cupcake cookie. Chupa chups carrot cake chocolate cake cotton candy.",
        topic_id: Topic.last.id
    )
end

puts "10 Blog post created"

1.times do |skill|
    Skill.create!(
        title:"Rails",
        percent_utilized: 20
    )
end
1.times do |skill|
    Skill.create!(
        title:"HTML",
        percent_utilized: 20
    )
end
1.times do |skill|
    Skill.create!(
        title:"React",
        percent_utilized: 20
    )
end
1.times do |skill|
    Skill.create!(
        title:"CSS3",
        percent_utilized: 20
    )
end

puts "5 Skills created"

5.times do |portfolio_item|
    Portfolio.create!(
        title:"Portfolio Title #{portfolio_item}",
        subtitle:"Ruby on Rails",
        body:"Gingerbread soufflé donut. Sesame snaps liquorice icing biscuit muffin caramels chocolate. Cupcake croissant sweet lollipop jelly-o candy canes powder. Jelly macaroon jelly beans sesame snaps cheesecake pie topping sweet. Sesame snaps muffin brownie topping topping. ",
        main_image:"https://picsum.photos/600/600?random=#{portfolio_item}",
        thumb_image:"https://picsum.photos/200/200?random=#{portfolio_item}"
    
    )
end

4.times do |portfolio_item|
    Portfolio.create!(
        title:"Portfolio Title #{portfolio_item}",
        subtitle:"React",
        body:"Gingerbread soufflé donut. Sesame snaps liquorice icing biscuit muffin caramels chocolate. Cupcake croissant sweet lollipop jelly-o candy canes powder. Jelly macaroon jelly beans sesame snaps cheesecake pie topping sweet. Sesame snaps muffin brownie topping topping.",
        main_image:"https://picsum.photos/600/600?random=#{portfolio_item}",
        thumb_image:"https://picsum.photos/200/200?random=#{portfolio_item}"
    
    )
end

puts "9 portfolio items created"


5.times do |technology|
    Portfolio.last.technologies.create!(
        name:"Rails"
    )
end

puts "5 technologies created"