10.times do |blog|
    Blog.create!(
        title:"My Blog Post #{blog}",
        body:"Lemon drops cheesecake danish cupcake halvah dragée tart. Lemon drops macaroon icing pastry chocolate bar chocolate bar sweet. Gingerbread cupcake wafer. Macaroon oat cake candy cupcake cookie. Chupa chups carrot cake chocolate cake cotton candy. Biscuit chupa chups powder brownie icing topping dessert chocolate cake. Bonbon caramels jelly-o chupa chups chocolate bar marzipan. Wafer liquorice gummies sesame snaps oat cake sesame snaps. Gingerbread candy canes candy canes pie. Gummies fruitcake halvah lemon drops. Soufflé oat cake gummi bears brownie icing. Cake chocolate bar cupcake dragée candy candy canes dragée caramels. Marzipan jelly dragée carrot cake sesame snaps brownie lemon drops powder. Ice cream pastry chocolate bar gummies lollipop cake cake."
    )
end

puts "10 Blog post created"

5.times do |skill|
    Skill.create!(
        title:"Rails #{skill}",
        percent_utilized: 20
    )
end

puts "5 Skills created"

9.times do |portfolio_item|
    Portfolio.create!(
        title:"Portfolio Title #{portfolio_item}",
        subtitle:"Client Info #{portfolio_item} ",
        body:"Gingerbread soufflé donut. Sesame snaps liquorice icing biscuit muffin caramels chocolate. Cupcake croissant sweet lollipop jelly-o candy canes powder. Jelly macaroon jelly beans sesame snaps cheesecake pie topping sweet. Sesame snaps muffin brownie topping topping. Pie topping sweet lemon drops lollipop. ",
        main_image:"https://picsum.photos/600/600?random=#{portfolio_item}",
        thumb_image:"https://picsum.photos/200/200?random=#{portfolio_item}"
    )
end


puts "9 portfolio items created"