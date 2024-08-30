# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


technology = Category.create(name: 'Technology')
design = Category.create(name: 'Design')
business = Category.create(name: 'Business')

technology = Category.find_by(name: 'Technology')
design = Category.find_by(name: 'Design')
business = Category.find_by(name: 'Business')



# Create Users (Project Owners and Contributors)
owner1 = User.create(username: 'Leah Owen', email: 'leah@example.com',password: 'password', password_confirmation: 'password' )
owner2 = User.create(username: 'Jane Smith', email: 'jane@example.com',password: 'password', password_confirmation: 'password')
owner3 = User.create(username: 'Kylie Madison', email: 'kylie@example.com',password: 'password', password_confirmation: 'password')
owner4 = User.create(username: 'Olivia Piper', email: 'olivia@example.com',password: 'password', password_confirmation: 'password')
owner5 = User.create(username: 'Lily James', email: 'lily@example.com',password: 'password', password_confirmation: 'password')
owner6 = User.create(username: 'Nora Rose', email: 'nora@example.com',password: 'password', password_confirmation:'password')
owner7 = User.create(username: 'Emma Hazel', email: 'emma@example.com',password: 'password', password_confirmation:'password')
owner8 = User.create(username: 'Candace Owen', email: 'emma@example.com',password: 'password', password_confirmation:'password')
owner9 = User.create(username: 'Aura Scarlet', email: 'aura@example.com',password: 'password', password_confirmation:'password')
owner10 = User.create(username: 'Ruby Winter', email: 'ruby@example.com',password: 'password', password_confirmation: 'password')
owner11 = User.create(username: 'Yara Smith', email: 'yara@example.com',password: 'password', password_confirmation: 'password')
owner12 = User.create(username: 'Taylor Deanne', email: 'taylor@example.com',password: 'password', password_confirmation:'password')
contributor1 = User.create(username: 'Alice Lot', email: 'alice@example.com',password: 'password', password_confirmation: 'password')
contributor2 = User.create(username: 'Claire Mark', email: 'claire@example.com',password: 'password', password_confirmation: 'password')

# Create Projects
project1 = Project.create(
  title: 'FitWave smart watch',
  image: ' https://saamaan.pk/cdn/shop/products/Comet-Infinity-Smartwatch.jpg?v=1671009969',
  small_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque finibus, neque non sodales porttitor, dolor tellus sodales metus, ac condimentum erat ante sed tortor. Ut et urna pulvinar, varius velit at, ultrices quam. Nunc rhoncus dui at urna bibendum sollicitudin. In gravida, nisl eget dignissim pellentesque, risus quam tempus elit, non mollis tortor justo eu ligula. Vestibulum varius sollicitudin lorem, at mattis nibh fringilla sit amet. Phasellus tincidunt, lectus eget aliquam interdum, justo sapien lobortis metus, et ultrices leo tortor a felis. Sed sed tortor ut nunc pellentesque tincidunt. Aenean convallis metus velit, eu ultricies nunc facilisis in. Vestibulum tempor efficitur ex, fermentum luctus nisl semper in. Vivamus vitae gravida risus. Suspendisse potenti. Proin aliquet ex nec libero porttitor, ac varius nunc dignissim. Curabitur at tincidunt eros, eu consequat arcu. Mauris tortor ex, dapibus sit amet accumsan eget, fermentum a nisl. Duis in sapien nec ex facilisis aliquam.',
  detailed_description: 'Integer elementum elementum orci, a scelerisque ex tempor sed. Nam vitae finibus erat. Sed a auctor nisi. Sed efficitur congue ante, a pretium ex luctus id. Vivamus ultrices est sed mi condimentum, eget venenatis odio elementum. Praesent fringilla ante sed ante dignissim lacinia. Duis varius, est et dictum vulputate, lorem odio ullamcorper felis, nec elementum elit lorem nec dolor. Vivamus quam mauris, consectetur accumsan ultricies ut, placerat in quam.Duis sed risus eget urna auctor malesuada. Pellentesque sit amet finibus lectus.Nunc sit amet metus non leo laoreet egestas at nec lacus. Praesent varius sodales magna. Suspendisse potenti. Proin ac orci a ipsum varius blandit. Ut ullamcorper ex justo, et sodales velit vestibulum nec. ',
  owner: owner1,
  category: technology,
  goal_amount: 50000,
  amount_raised: 15000
)

project2 = Project.create(
  title: ' Ergos-New generation ultra thin laptops',
  image: ' https://images.unsplash.com/photo-1518611507436-f9221403cca2?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cG9zdCUyMGl0fGVufDB8fDB8fHww',
  small_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque finibus, neque non sodales porttitor, dolor tellus sodales metus, ac condimentum erat ante sed tortor. Ut et urna pulvinar, varius velit at, ultrices quam. Nunc rhoncus dui at urna bibendum sollicitudin. In gravida, nisl eget dignissim pellentesque, risus quam tempus elit, non mollis tortor justo eu ligula. Vestibulum varius sollicitudin lorem, at mattis nibh fringilla sit amet. Phasellus tincidunt, lectus eget aliquam interdum, justo sapien lobortis metus, et ultrices leo tortor a felis. Sed sed tortor ut nunc pellentesque tincidunt. Aenean convallis metus velit, eu ultricies nunc facilisis in. Vestibulum tempor efficitur ex, fermentum luctus nisl semper in. Vivamus vitae gravida risus. Suspendisse potenti. Proin aliquet ex nec libero porttitor, ac varius nunc dignissim. Curabitur at tincidunt eros, eu consequat arcu. Mauris tortor ex, dapibus sit amet accumsan eget, fermentum a nisl. Duis in sapien nec ex facilisis aliquam. ',
  detailed_description: ' Integer elementum elementum orci, a scelerisque ex tempor sed. Nam vitae finibus erat. Sed a auctor nisi. Sed efficitur congue ante, a pretium ex luctus id. Vivamus ultrices est sed mi condimentum, eget venenatis odio elementum. Praesent fringilla ante sed ante dignissim lacinia. Duis varius, est et dictum vulputate, lorem odio ullamcorper felis, nec elementum elit lorem nec dolor. Vivamus quam mauris, consectetur accumsan ultricies ut, placerat in quam.

Duis sed risus eget urna auctor malesuada. Pellentesque sit amet finibus lectus.

Nunc sit amet metus non leo laoreet egestas at nec lacus. Praesent varius sodales magna. Suspendisse potenti. Proin ac orci a ipsum varius blandit. Ut ullamcorper ex justo, et sodales velit vestibulum nec.',
  owner: owner2,
  category: technology,
  goal_amount: 20000,
  amount_raised: 5000

)

project3 = Project.create(
  title: 'SmartCity Infrastructure: AI-Powered Traffic Management',
  image: 'https://parquery.com/media/green-on-demand-with-Parquerys-virtual-AI-based-detectors-replacing-induction-loops_7ur0TlY.jpg',
  small_description: ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque finibus, neque non sodales porttitor, dolor tellus sodales metus, ac condimentum erat ante sed tortor. Ut et urna pulvinar, varius velit at, ultrices quam. Nunc rhoncus dui at urna bibendum sollicitudin. In gravida, nisl eget dignissim pellentesque, risus quam tempus elit, non mollis tortor justo eu ligula. Vestibulum varius sollicitudin lorem, at mattis nibh fringilla sit amet. Phasellus tincidunt, lectus eget aliquam interdum, justo sapien lobortis metus, et ultrices leo tortor a felis. Sed sed tortor ut nunc pellentesque tincidunt. Aenean convallis metus velit, eu ultricies nunc facilisis in. Vestibulum tempor efficitur ex, fermentum luctus nisl semper in. Vivamus vitae gravida risus. Suspendisse potenti. Proin aliquet ex nec libero porttitor, ac varius nunc dignissim. Curabitur at tincidunt eros, eu consequat arcu. Mauris tortor ex, dapibus sit amet accumsan eget, fermentum a nisl. Duis in sapien nec ex facilisis aliquam. ',
  detailed_description: 'Integer elementum elementum orci, a scelerisque ex tempor sed. Nam vitae finibus erat. Sed a auctor nisi. Sed efficitur congue ante, a pretium ex luctus id. Vivamus ultrices est sed mi condimentum, eget venenatis odio elementum. Praesent fringilla ante sed ante dignissim lacinia. Duis varius, est et dictum vulputate, lorem odio ullamcorper felis, nec elementum elit lorem nec dolor. Vivamus quam mauris, consectetur accumsan ultricies ut, placerat in quam.

Duis sed risus eget urna auctor malesuada. Pellentesque sit amet finibus lectus.

Nunc sit amet metus non leo laoreet egestas at nec lacus. Praesent varius sodales magna. Suspendisse potenti. Proin ac orci a ipsum varius blandit. Ut ullamcorper ex justo, et sodales velit vestibulum nec.  ',
  owner: owner3,
  category: technology,
  goal_amount: 50000,
  amount_raised: 15000
)

project4 = Project.create(
  title: 'Innovative Tech Gadget',
  image: 'https://media.istockphoto.com/id/1252809376/photo/japanese-man-at-hand-using-a-smartphone.jpg?s=612x612&w=0&k=20&c=3zUF1981mbU4mN3gmQ8IYWU96HAs1pPEN89WYKw5NAQ=',
  small_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque finibus, neque non sodales porttitor, dolor tellus sodales metus, ac condimentum erat ante sed tortor. Ut et urna pulvinar, varius velit at, ultrices quam. Nunc rhoncus dui at urna bibendum sollicitudin. In gravida, nisl eget dignissim pellentesque, risus quam tempus elit, non mollis tortor justo eu ligula. Vestibulum varius sollicitudin lorem, at mattis nibh fringilla sit amet. Phasellus tincidunt, lectus eget aliquam interdum, justo sapien lobortis metus, et ultrices leo tortor a felis. Sed sed tortor ut nunc pellentesque tincidunt. Aenean convallis metus velit, eu ultricies nunc facilisis in. Vestibulum tempor efficitur ex, fermentum luctus nisl semper in. Vivamus vitae gravida risus. Suspendisse potenti. Proin aliquet ex nec libero porttitor, ac varius nunc dignissim. Curabitur at tincidunt eros, eu consequat arcu. Mauris tortor ex, dapibus sit amet accumsan eget, fermentum a nisl. Duis in sapien nec ex facilisis aliquam.',
  detailed_description: 'Integer elementum elementum orci, a scelerisque ex tempor sed. Nam vitae finibus erat. Sed a auctor nisi. Sed efficitur congue ante, a pretium ex luctus id. Vivamus ultrices est sed mi condimentum, eget venenatis odio elementum. Praesent fringilla ante sed ante dignissim lacinia. Duis varius, est et dictum vulputate, lorem odio ullamcorper felis, nec elementum elit lorem nec dolor. Vivamus quam mauris, consectetur accumsan ultricies ut, placerat in quam.

Duis sed risus eget urna auctor malesuada. Pellentesque sit amet finibus lectus.

Nunc sit amet metus non leo laoreet egestas at nec lacus. Praesent varius sodales magna. Suspendisse potenti. Proin ac orci a ipsum varius blandit. Ut ullamcorper ex justo, et sodales velit vestibulum nec.',
  owner: owner4,
  category: technology,
  goal_amount: 50000,
  amount_raised: 15000
)

project5 = Project.create(
  title: 'Innovative Tech Gadget',
  image: ' https://www.ied.edu/_default_upload_bucket/1081/image-thumb__1081__scaleByWidth1000/1600x952px_Le%20scuole_Design.jpg',
  small_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque finibus, neque non sodales porttitor, dolor tellus sodales metus, ac condimentum erat ante sed tortor. Ut et urna pulvinar, varius velit at, ultrices quam. Nunc rhoncus dui at urna bibendum sollicitudin. In gravida, nisl eget dignissim pellentesque, risus quam tempus elit, non mollis tortor justo eu ligula. Vestibulum varius sollicitudin lorem, at mattis nibh fringilla sit amet. Phasellus tincidunt, lectus eget aliquam interdum, justo sapien lobortis metus, et ultrices leo tortor a felis. Sed sed tortor ut nunc pellentesque tincidunt. Aenean convallis metus velit, eu ultricies nunc facilisis in. Vestibulum tempor efficitur ex, fermentum luctus nisl semper in. Vivamus vitae gravida risus. Suspendisse potenti. Proin aliquet ex nec libero porttitor, ac varius nunc dignissim. Curabitur at tincidunt eros, eu consequat arcu. Mauris tortor ex, dapibus sit amet accumsan eget, fermentum a nisl. Duis in sapien nec ex facilisis aliquam.',
  detailed_description: 'Integer elementum elementum orci, a scelerisque ex tempor sed. Nam vitae finibus erat. Sed a auctor nisi. Sed efficitur congue ante, a pretium ex luctus id. Vivamus ultrices est sed mi condimentum, eget venenatis odio elementum. Praesent fringilla ante sed ante dignissim lacinia. Duis varius, est et dictum vulputate, lorem odio ullamcorper felis, nec elementum elit lorem nec dolor. Vivamus quam mauris, consectetur accumsan ultricies ut, placerat in quam.

Duis sed risus eget urna auctor malesuada. Pellentesque sit amet finibus lectus.

Nunc sit amet metus non leo laoreet egestas at nec lacus. Praesent varius sodales magna. Suspendisse potenti. Proin ac orci a ipsum varius blandit. Ut ullamcorper ex justo, et sodales velit vestibulum nec.',
  owner: owner5,
  category: design,
  goal_amount: 50000,
  amount_raised: 15000
)

project6 = Project.create(
  title: 'Innovative Tech Gadget',
  image: 'https://akm-img-a-in.tosshub.com/indiatoday/images/media_bank/202307/why-design-thinking-is-important-in-todays-job-industries-132433-1x1.jpg?VersionId=JAHp7dbg0er_X8nmv1NGAEJLGvYjAHLW',
  small_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque finibus, neque non sodales porttitor, dolor tellus sodales metus, ac condimentum erat ante sed tortor. Ut et urna pulvinar, varius velit at, ultrices quam. Nunc rhoncus dui at urna bibendum sollicitudin. In gravida, nisl eget dignissim pellentesque, risus quam tempus elit, non mollis tortor justo eu ligula. Vestibulum varius sollicitudin lorem, at mattis nibh fringilla sit amet. Phasellus tincidunt, lectus eget aliquam interdum, justo sapien lobortis metus, et ultrices leo tortor a felis. Sed sed tortor ut nunc pellentesque tincidunt. Aenean convallis metus velit, eu ultricies nunc facilisis in. Vestibulum tempor efficitur ex, fermentum luctus nisl semper in. Vivamus vitae gravida risus. Suspendisse potenti. Proin aliquet ex nec libero porttitor, ac varius nunc dignissim. Curabitur at tincidunt eros, eu consequat arcu. Mauris tortor ex, dapibus sit amet accumsan eget, fermentum a nisl. Duis in sapien nec ex facilisis aliquam.',
  detailed_description: 'Integer elementum elementum orci, a scelerisque ex tempor sed. Nam vitae finibus erat. Sed a auctor nisi. Sed efficitur congue ante, a pretium ex luctus id. Vivamus ultrices est sed mi condimentum, eget venenatis odio elementum. Praesent fringilla ante sed ante dignissim lacinia. Duis varius, est et dictum vulputate, lorem odio ullamcorper felis, nec elementum elit lorem nec dolor. Vivamus quam mauris, consectetur accumsan ultricies ut, placerat in quam.

Duis sed risus eget urna auctor malesuada. Pellentesque sit amet finibus lectus.

Nunc sit amet metus non leo laoreet egestas at nec lacus. Praesent varius sodales magna. Suspendisse potenti. Proin ac orci a ipsum varius blandit. Ut ullamcorper ex justo, et sodales velit vestibulum nec.',
  owner: owner6,
  category: design,
  goal_amount: 50000,
  amount_raised: 15000
)
project7 = Project.create(
  title: 'Innovative Tech Gadget',
  image: 'https://frugalminimalistkitchen.com/wp-content/uploads/2021/06/Minimalist-Aesthetic-Boho-Desktop-wallpaper-annanicolestudios-1.jpg?ezimgfmt=rs:391x313/rscb6/ngcb6/notWebP',
  small_description: ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque finibus, neque non sodales porttitor, dolor tellus sodales metus, ac condimentum erat ante sed tortor. Ut et urna pulvinar, varius velit at, ultrices quam. Nunc rhoncus dui at urna bibendum sollicitudin. In gravida, nisl eget dignissim pellentesque, risus quam tempus elit, non mollis tortor justo eu ligula. Vestibulum varius sollicitudin lorem, at mattis nibh fringilla sit amet. Phasellus tincidunt, lectus eget aliquam interdum, justo sapien lobortis metus, et ultrices leo tortor a felis. Sed sed tortor ut nunc pellentesque tincidunt. Aenean convallis metus velit, eu ultricies nunc facilisis in. Vestibulum tempor efficitur ex, fermentum luctus nisl semper in. Vivamus vitae gravida risus. Suspendisse potenti. Proin aliquet ex nec libero porttitor, ac varius nunc dignissim. Curabitur at tincidunt eros, eu consequat arcu. Mauris tortor ex, dapibus sit amet accumsan eget, fermentum a nisl. Duis in sapien nec ex facilisis aliquam.',
  detailed_description: 'Integer elementum elementum orci, a scelerisque ex tempor sed. Nam vitae finibus erat. Sed a auctor nisi. Sed efficitur congue ante, a pretium ex luctus id. Vivamus ultrices est sed mi condimentum, eget venenatis odio elementum. Praesent fringilla ante sed ante dignissim lacinia. Duis varius, est et dictum vulputate, lorem odio ullamcorper felis, nec elementum elit lorem nec dolor. Vivamus quam mauris, consectetur accumsan ultricies ut, placerat in quam.

Duis sed risus eget urna auctor malesuada. Pellentesque sit amet finibus lectus.

Nunc sit amet metus non leo laoreet egestas at nec lacus. Praesent varius sodales magna. Suspendisse potenti. Proin ac orci a ipsum varius blandit. Ut ullamcorper ex justo, et sodales velit vestibulum nec.',
  owner: owner7,
  category: design,
  goal_amount: 50000,
  amount_raised: 15000
)
project8 = Project.create(
  title: 'Startup Hive: Incubating the Next Generation of Entrepreneurs',
  image: 'https://img.freepik.com/premium-photo/floral-background-abstract-flower-design-copyspace-wedding-greeting-cards-quotes_1123-715.jpg',
  small_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque finibus, neque non sodales porttitor, dolor tellus sodales metus, ac condimentum erat ante sed tortor. Ut et urna pulvinar, varius velit at, ultrices quam. Nunc rhoncus dui at urna bibendum sollicitudin. In gravida, nisl eget dignissim pellentesque, risus quam tempus elit, non mollis tortor justo eu ligula. Vestibulum varius sollicitudin lorem, at mattis nibh fringilla sit amet. Phasellus tincidunt, lectus eget aliquam interdum, justo sapien lobortis metus, et ultrices leo tortor a felis. Sed sed tortor ut nunc pellentesque tincidunt. Aenean convallis metus velit, eu ultricies nunc facilisis in. Vestibulum tempor efficitur ex, fermentum luctus nisl semper in. Vivamus vitae gravida risus. Suspendisse potenti. Proin aliquet ex nec libero porttitor, ac varius nunc dignissim. Curabitur at tincidunt eros, eu consequat arcu. Mauris tortor ex, dapibus sit amet accumsan eget, fermentum a nisl. Duis in sapien nec ex facilisis aliquam.',
  detailed_description: 'Integer elementum elementum orci, a scelerisque ex tempor sed. Nam vitae finibus erat. Sed a auctor nisi. Sed efficitur congue ante, a pretium ex luctus id. Vivamus ultrices est sed mi condimentum, eget venenatis odio elementum. Praesent fringilla ante sed ante dignissim lacinia. Duis varius, est et dictum vulputate, lorem odio ullamcorper felis, nec elementum elit lorem nec dolor. Vivamus quam mauris, consectetur accumsan ultricies ut, placerat in quam.

Duis sed risus eget urna auctor malesuada. Pellentesque sit amet finibus lectus.

Nunc sit amet metus non leo laoreet egestas at nec lacus. Praesent varius sodales magna. Suspendisse potenti. Proin ac orci a ipsum varius blandit. Ut ullamcorper ex justo, et sodales velit vestibulum nec.',
  owner: owner8,
  category: design,
  goal_amount: 50000,
  amount_raised: 15000
)
project9 = Project.create(
  title: 'Green Ventures: Sustainable Business Accelerator',
  image: 'https://img.freepik.com/free-photo/african-american-business-woman-by-window_1303-10869.jpg',
  small_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque finibus, neque non sodales porttitor, dolor tellus sodales metus, ac condimentum erat ante sed tortor. Ut et urna pulvinar, varius velit at, ultrices quam. Nunc rhoncus dui at urna bibendum sollicitudin. In gravida, nisl eget dignissim pellentesque, risus quam tempus elit, non mollis tortor justo eu ligula. Vestibulum varius sollicitudin lorem, at mattis nibh fringilla sit amet. Phasellus tincidunt, lectus eget aliquam interdum, justo sapien lobortis metus, et ultrices leo tortor a felis. Sed sed tortor ut nunc pellentesque tincidunt. Aenean convallis metus velit, eu ultricies nunc facilisis in. Vestibulum tempor efficitur ex, fermentum luctus nisl semper in. Vivamus vitae gravida risus. Suspendisse potenti. Proin aliquet ex nec libero porttitor, ac varius nunc dignissim. Curabitur at tincidunt eros, eu consequat arcu. Mauris tortor ex, dapibus sit amet accumsan eget, fermentum a nisl. Duis in sapien nec ex facilisis aliquam.',
  detailed_description: 'Integer elementum elementum orci, a scelerisque ex tempor sed. Nam vitae finibus erat. Sed a auctor nisi. Sed efficitur congue ante, a pretium ex luctus id. Vivamus ultrices est sed mi condimentum, eget venenatis odio elementum. Praesent fringilla ante sed ante dignissim lacinia. Duis varius, est et dictum vulputate, lorem odio ullamcorper felis, nec elementum elit lorem nec dolor. Vivamus quam mauris, consectetur accumsan ultricies ut, placerat in quam.

Duis sed risus eget urna auctor malesuada. Pellentesque sit amet finibus lectus.

Nunc sit amet metus non leo laoreet egestas at nec lacus. Praesent varius sodales magna. Suspendisse potenti. Proin ac orci a ipsum varius blandit. Ut ullamcorper ex justo, et sodales velit vestibulum nec.',
  owner: owner9,
  category: business,
  goal_amount: 50000,
  amount_raised: 15000
)
project10 = Project.create(
  title: 'Innovative Tech Gadget',
  image: 'https://st3.depositphotos.com/13193658/31671/i/450/depositphotos_316718750-stock-photo-happy-businessman-looking-showing-winner.jpg',
  small_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque finibus, neque non sodales porttitor, dolor tellus sodales metus, ac condimentum erat ante sed tortor. Ut et urna pulvinar, varius velit at, ultrices quam. Nunc rhoncus dui at urna bibendum sollicitudin. In gravida, nisl eget dignissim pellentesque, risus quam tempus elit, non mollis tortor justo eu ligula. Vestibulum varius sollicitudin lorem, at mattis nibh fringilla sit amet. Phasellus tincidunt, lectus eget aliquam interdum, justo sapien lobortis metus, et ultrices leo tortor a felis. Sed sed tortor ut nunc pellentesque tincidunt. Aenean convallis metus velit, eu ultricies nunc facilisis in. Vestibulum tempor efficitur ex, fermentum luctus nisl semper in. Vivamus vitae gravida risus. Suspendisse potenti. Proin aliquet ex nec libero porttitor, ac varius nunc dignissim. Curabitur at tincidunt eros, eu consequat arcu. Mauris tortor ex, dapibus sit amet accumsan eget, fermentum a nisl. Duis in sapien nec ex facilisis aliquam.',
  detailed_description: 'Integer elementum elementum orci, a scelerisque ex tempor sed. Nam vitae finibus erat. Sed a auctor nisi. Sed efficitur congue ante, a pretium ex luctus id. Vivamus ultrices est sed mi condimentum, eget venenatis odio elementum. Praesent fringilla ante sed ante dignissim lacinia. Duis varius, est et dictum vulputate, lorem odio ullamcorper felis, nec elementum elit lorem nec dolor. Vivamus quam mauris, consectetur accumsan ultricies ut, placerat in quam.

Duis sed risus eget urna auctor malesuada. Pellentesque sit amet finibus lectus.

Nunc sit amet metus non leo laoreet egestas at nec lacus. Praesent varius sodales magna. Suspendisse potenti. Proin ac orci a ipsum varius blandit. Ut ullamcorper ex justo, et sodales velit vestibulum nec.',
  owner: owner10,
  category: business,
  goal_amount: 50000,
  amount_raised: 15000
)
project11 = Project.create(
  title: 'Innovative Tech Gadget',
  image: 'https://www.freshbooks.com/wp-content/uploads/2022/03/how-long-does-it-take-business-to-be-successful.jpg',
  small_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque finibus, neque non sodales porttitor, dolor tellus sodales metus, ac condimentum erat ante sed tortor. Ut et urna pulvinar, varius velit at, ultrices quam. Nunc rhoncus dui at urna bibendum sollicitudin. In gravida, nisl eget dignissim pellentesque, risus quam tempus elit, non mollis tortor justo eu ligula. Vestibulum varius sollicitudin lorem, at mattis nibh fringilla sit amet. Phasellus tincidunt, lectus eget aliquam interdum, justo sapien lobortis metus, et ultrices leo tortor a felis. Sed sed tortor ut nunc pellentesque tincidunt. Aenean convallis metus velit, eu ultricies nunc facilisis in. Vestibulum tempor efficitur ex, fermentum luctus nisl semper in. Vivamus vitae gravida risus. Suspendisse potenti. Proin aliquet ex nec libero porttitor, ac varius nunc dignissim. Curabitur at tincidunt eros, eu consequat arcu. Mauris tortor ex, dapibus sit amet accumsan eget, fermentum a nisl. Duis in sapien nec ex facilisis aliquam.',
  detailed_description: 'Integer elementum elementum orci, a scelerisque ex tempor sed. Nam vitae finibus erat. Sed a auctor nisi. Sed efficitur congue ante, a pretium ex luctus id. Vivamus ultrices est sed mi condimentum, eget venenatis odio elementum. Praesent fringilla ante sed ante dignissim lacinia. Duis varius, est et dictum vulputate, lorem odio ullamcorper felis, nec elementum elit lorem nec dolor. Vivamus quam mauris, consectetur accumsan ultricies ut, placerat in quam.

Duis sed risus eget urna auctor malesuada. Pellentesque sit amet finibus lectus.

Nunc sit amet metus non leo laoreet egestas at nec lacus. Praesent varius sodales magna. Suspendisse potenti. Proin ac orci a ipsum varius blandit. Ut ullamcorper ex justo, et sodales velit vestibulum nec.',
  owner: owner11,
  category: business,
  goal_amount: 50000,
  amount_raised: 15000
)
project12 = Project.create(
  title: 'Innovative Tech Gadget',
  image: 'https://imageio.forbes.com/specials-images/imageserve/65a825cf22728722be139b5c/money-mindset/960x0.jpg?format=jpg&width=960',
  small_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque finibus, neque non sodales porttitor, dolor tellus sodales metus, ac condimentum erat ante sed tortor. Ut et urna pulvinar, varius velit at, ultrices quam. Nunc rhoncus dui at urna bibendum sollicitudin. In gravida, nisl eget dignissim pellentesque, risus quam tempus elit, non mollis tortor justo eu ligula. Vestibulum varius sollicitudin lorem, at mattis nibh fringilla sit amet. Phasellus tincidunt, lectus eget aliquam interdum, justo sapien lobortis metus, et ultrices leo tortor a felis. Sed sed tortor ut nunc pellentesque tincidunt. Aenean convallis metus velit, eu ultricies nunc facilisis in. Vestibulum tempor efficitur ex, fermentum luctus nisl semper in. Vivamus vitae gravida risus. Suspendisse potenti. Proin aliquet ex nec libero porttitor, ac varius nunc dignissim. Curabitur at tincidunt eros, eu consequat arcu. Mauris tortor ex, dapibus sit amet accumsan eget, fermentum a nisl. Duis in sapien nec ex facilisis aliquam.',
  detailed_description: 'Integer elementum elementum orci, a scelerisque ex tempor sed. Nam vitae finibus erat. Sed a auctor nisi. Sed efficitur congue ante, a pretium ex luctus id. Vivamus ultrices est sed mi condimentum, eget venenatis odio elementum. Praesent fringilla ante sed ante dignissim lacinia. Duis varius, est et dictum vulputate, lorem odio ullamcorper felis, nec elementum elit lorem nec dolor. Vivamus quam mauris, consectetur accumsan ultricies ut, placerat in quam.

Duis sed risus eget urna auctor malesuada. Pellentesque sit amet finibus lectus.

Nunc sit amet metus non leo laoreet egestas at nec lacus. Praesent varius sodales magna. Suspendisse potenti. Proin ac orci a ipsum varius blandit. Ut ullamcorper ex justo, et sodales velit vestibulum nec.',
  owner: owner12,
  category: business,
  goal_amount: 50000,
  amount_raised: 15000
)


#create conributions

Contribution.create(project: project1, user_id: 1 , amount: 1000, phone_number: '+254725952696')
Contribution.create(project: project1, user_id: 2 , amount: 2000, phone_number: '+254725952697')
Contribution.create(project: project2, user_id: 3 , amount: 1500, phone_number: '+254725952696')

# Create Comments
Comment.create(project: project1,user_id: 4 , content: 'This is an amazing project!')
Comment.create(project: project1, user_id: 5, content: 'Can’t wait to see this in action!')
Comment.create(project: project2, user_id: 6, content: 'Love this idea!')
