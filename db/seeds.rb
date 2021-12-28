puts "🌱 Seeding spices..."

# Seed your database here

u1 = User.create(name: "marc", phone_number: "561-0000-001", email: "marc@gmail.com", user_name: "marc1", password: "1234567890")
u2 = User.create(name: "john", phone_number: "561-0000-002", email: "john@gmail.com", user_name: "john1", password: "1234567890")
u3 = User.create(name: "alex", phone_number: "561-0000-003", email: "alex@gmail.com", user_name: "alex1", password: "1234567890")
u3 = User.create(name: "Helene", phone_number: "561-0000-003", email: "helene@gmail.com", user_name: "helene1234", password: "1234567890")
u3 = User.create(name: "Joshoua", phone_number: "561-0000-003", email: "Joshoua123@gmail.com", user_name: "JOSHOUA1234", password: "1234567890")

c1 = Category.create(category: "phone bills")
c2 = Category.create(category: "vet bills")
c1 = Category.create(category: "house keeping")


# t1 = Todo.create(title: "prova 1", content: "content 1", status: true)
# t1 = Todo.create(title: "prova 2", content: "content 2", status: true)
# t1 = Todo.create(title: "prova 3", content: "content 3", status: true)
# t1 = Todo.create(title: "prova 4", content: "content 4", status: true)
# t1 = Todo.create(title: "prova 5", content: "content 5", status: false)
puts "✅ Done seeding!"
