Booking.destroy_all
Tool.destroy_all
User.destroy_all

puts 'Creating tools...'

user = User.create!(
  name: "ben",
  email: "ben@hotmail.com",
  password: "password"
)

saw = Tool.new(
  title: "SAW",
  address: "Lyon",
  caracteristics: "wood saw",
  description: "You need a saw to cut a piece of wood. ",
  user: user,
  price_per_day: 2,
  photo_url: "https://www.bricolib.net/wp-content/uploads/2013/01/castorama-scie-egoine-400-mm.jpeg"
)
saw.save!

Booking.create!(
  tool: saw,
  user: user,
  start_date: "16/08/2017",
  end_date: "18/08/2017"
)

miter_saw = Tool.new(
  title: "MITER SAW",
  address: "Lyon",
  caracteristics: "Brand: Metabo Model GE3622 Power: 1200W",
  user: user,
  description: "Perfect to impress your wife",
  price_per_day: 20,
  photo: File.open("#{Rails.root.to_s}/app/assets/images/miter-saw.jpg")
)
miter_saw.save!


booking_2 = Booking.new(
  tool: miter_saw,
  user: user,
  start_date: "17/08/2017",
  end_date: "18/08/2017"
)
booking_2.save!

circular_saw = Tool.new(
  title: "CIRCULAR SAW",
  address: "Lyon",
  caracteristics: "Black&Decker, Model:GU294 , Power: 1600W,",
  description: "Ideal to make a perfect straight cut",
  user: user,
  price_per_day: 15,
  photo: File.open("#{Rails.root.to_s}/app/assets/images/circular-saw.jpg")
)
circular_saw.save!

jigsaw = Tool.new(
  title: "JIGSAW",
  address: "Lyon",
  caracteristics: "Black&Decker Model:VE651  Power: 900W electric",
  description: "I propose a jisaw to make nice curve cut in the wood. Very simple to use.",
  user: user,
  price_per_day: 20,
  photo: File.open("#{Rails.root.to_s}/app/assets/images/jigsaw.jpg")
)
jigsaw.save!


booking_3 = Booking.new(
  tool: jigsaw,
  user: user,
  start_date: "20/08/2017",
  end_date: "21/08/2017"
)
booking_3.save!


lawn_mower = Tool.new(
  title: "Lawn mower",
  address: "Bron",
  caracteristics: "Black&Decker, Model:XK784 , Power: 100W,",
  description: "Ideal to have a wonderfull garden",
  user: user,
  price_per_day: 15,
  photo: File.open("#{Rails.root.to_s}/app/assets/images/lawnmower.jpg")
)
lawn_mower.save!

hedge_trimming = Tool.new(
  title: "Hedge trimming",
  address: "Venissieux",
  caracteristics: "Black&Decker Model:HT51  Power: 900W electric",
  description: "Easy to manipulate. Lighter. Intuitive functionnality use.",
  user: user,
  price_per_day: 17,
  photo: File.open("#{Rails.root.to_s}/app/assets/images/hedge_trimming.png")
)
hedge_trimming.save!


#puts 'Creating bookings...'



puts 'Finished!'
