# Order Up

<img src="https://s3.amazonaws.com/after-school-assets/order-pizza.gif" align="right" width="300px" hspace="10">

We're switching gears a little (a lot) a bit, to start learning Ruby, a very powerful backend programming language. Ruby is a language that is used to built web applications. This means you can't use it to build desktop software, iPhone applications, or Android applications.

A web application is any website that you interact with beyond just reading text on a page or looking at images. Good examples of web applications are Facebook, Twitter, Yelp, Fandango, etc. The list goes on..and on...and on...

## Let's Get Started

It's important to know that a program is just lines of text that the computer can understand and execute. Think of a program as instructions that the computer can follow. The two main components of a program are key-words and data. Data is just pieces of information for an application to process. The internet is entirely made up of data and websites give context for that data. Fandango is an application for purchasing movie tickets, but without knowing what Fandango is and does, it's just a bunch of random addresses, names, and times on the screen. That's data and Fandango gives context for it.

Today, you're going to be diving into building a command line interface application with Ruby for taking a pizza order. You'll be coding your solution in `app.rb`

### Step 1:

Click `Open` at the top of this page to bring this lesson down so you can edit files in Nitrous.

<img src="https://s3.amazonaws.com/after-school-assets/new-open-in-nitrous.png">

Because we're writing backend code, you don't need to worry about starting a server. You can't view Ruby code in the browser. We'll be running our code in a very different way. You'll see shortly!

### Step 2:

Open up `app.rb` in the Nitrous text editor. It should be blank.


### Step 3:

Let's start by getting our program to say hello. Copy the code below and paste it in `app.rb`:

```ruby
"Hello, World!"
```
This line of code is known as a **String**. A string is a piece of data that a program can interpret. A string can contain letters, numbers, and special characters. `"Ke$$$Sha!!123"` is a valid string.

Go ahead and save the changes to this file. 


### Step 4:

In terminal, in the directory of this lesson, enter `ruby app.rb`. This line tells ruby to follow the instructions in our file. 

But how come nothing happened? So far, all we've done is give our program a piece of data. We haven't told it to do anything with this data. Now we want to get that string printed out into the console


### Step 5:

Replace the code in `app.rb` with the follow:

```ruby
puts "Hello, World!"
```

`puts` is a ruby keyword that prints out data to the console. In this case, `puts` is printing out the string `"Hello, World!"`. 

Save your changes to `app.rb` and in terminal, enter `ruby app.rb`. This time, you should see your string printed to the console.

<img src="https://s3.amazonaws.com/after-school-assets/ruby-app-rb">

Go ahead and change the string in `app.rb`. Save your changes and run the file again by entering in terminal `ruby app.rb`. Whatever you entered as your string should be printed in the terminal.


### Step 6:

Our applications can deal with other types of data too: 

+ Integers like `1` and `108979`

+ Floats like `1.2` and `99.889972396`

In `app.rb` enter:

```ruby
puts 1000
```

Run your file and you should see `1000` printed out in the terminal.

### Step 7:

Ok so we want to build a pizza ordering service (delivery not gauranteed). So instead of having the first line of our app say a random string, we should probably welcome our user to our service:

```ruby
puts "Welcome to the most amazing pizza store ever"
```

It's important to test our code every step of the way. Save your changes and run `ruby app.rb` to test your code.

### Step 8:

Now that we've welcomed our user to our pizza place, we should probably ask our user what they would like to order. Copy the code below and paste it in `app.rb` underneath your welcome:

```ruby
puts "What would you like to order?"
```

Save your changes, and when you run your app you should see the following:

<img src="https://s3.amazonaws.com/after-school-assets/welcome-order">


### Step 9:

At this point, as a user, we would expect to be able to type our order. So now we need our program to be able take take in input from the user. We do this with another ruby keyword `gets`.

Go ahead and add `gets` to `app.rb` on line 3 after the prompt for a user to order.

Save your changes and enter `ruby app.rb`. You should see your welcome and your prompt to order, and the application should freeze with a cursor in terminal to type. Go ahead and try to type. To submit what you typed just press `return`.

The application should quit at that point, because we don't have any more lines of code.

<img src="https://s3.amazonaws.com/after-school-assets/cheese-pizza">

### Step 10

We need to be able to save the user's order to be able to give them a total price. We can do this with a variable.

Variables in programming work in the exact same way as they do in math:

```ruby
x = 1
y = 2
```
The variable name is to the left of the `=`, and the value the variable stores to the right. In the example above, the variable `x` stores the value `1`, and the variable `y` stores the value `2`.

In Ruby, we prefer to use variable names that are really explicit and describe the value stored. Stay away from single letter variable names. 

To store our user's order, we'll use the variable `order`. To be able to store the user's input in the variable, we need to replace `gets` in `app.rb` with the following:

```ruby
order = gets
```

Because `gets` is the Ruby keyword that takes in input from the user, we're storing that input in the variable `order`.

Save your changes and run your program again. You should see the same behavior as last time.


### Step 11:

Because we like to test our code every step of the way, we want to test that the variable `order` is in fact properly storing the input from the user.

On the next line in `app.rb`, enter:

```ruby
puts order
```

This line will print out whatever value the `order` variable stores. When you run your code, you should see something similar to the this:

<img src="https://s3.amazonaws.com/after-school-assets/order-variable">

You want to see whatever you entered printed back in the terminal on the next line.


### Step 12:

Go ahead and delete the `puts order`. That was just a check to make sure our variable was storing the right data.

Now we want to ask a user how many of those pizza's they want, allow them to enter an amount, and store it in the variable `quantity`. Last, let's check our `quantity` variable

```ruby
puts "How many would you like?"
quantity = gets
puts quantity
```

Save your changes to `app.rb` and run your code.

<img src="https://s3.amazonaws.com/after-school-assets/quantity-variable">

### Step 13

Go ahead and delete `puts quantity`. Again, that was just to check our variable.

Now, we need to tell the user what their total is. For now, we're just going to say that every pizza costs $18 dollars.

In order to get the total, we need to multiply `18*quantity`.

Go ahead and add to the end of `app.rb`:

```ruby
puts 18 * quantity
```

We need to include the `puts`, because without it, Ruby won't print the total out on the screen. Computers don't know how to make assumptions, so our instructions have to be as explicit as possible. Ruby can't assume we want the total printed out.

Save your changes and run `app.rb` in the terminal

### Step 14:

But UH OH! Instead of seeing a total, we get this error:

```
app.rb:6:in `*': String can't be coerced into Fixnum (TypeError)
        from app.rb:6:in `<main>'
```

Deep breath. Don't freak out. Errors are actually a really good sign. Think of errors as breadcrumbs to solving the problem in your code. This error is telling us that in `app.rb` in line 6, we have a problem. And the problem is that we can't multiply a String and an Integer together. But I entered `12` as my quantity. I didn't enter a String. `12*18` is just math, right? 

So now we need to back up a quick second. The ruby `gets` keyword takes in all input from a user as a String, so instead of taking in the quantity as `12`, it really took it in as `"12"`.

We can't multiply `"12" * 18`, because they're two different datatypes. But we can convert a string to an integer.

One last thing before we convert `"12"` to `12`. When you run your app, and enter your pizza order and quantity, what key do you hit to submit? The `return` key. When you're typing in any sort of document, what does the `return` key do? It puts your cursor on a new line. In terminal, it's submitting our order but it's **also** entering on a new line, so our quantity variable actually looks something like this:

```ruby
quantity = "12 
"
```
Before we can convert the string to an integer, we need to get rid of that return (also known as the newline character).

We can do that with another Ruby method or keyword `chomp`:

Replace `quantity = gets` with the following line of code:

```ruby
quantity = gets.chomp
```

Here, we're using the chomp method to get rid of the return keypress, so our variable now looks something like this `quantity = "12"`

### Step 15:

Now we need to convert the string `"12"` to the integer `12` with the ruby `to_i` method. 

Replace `quantity = gets.chomp` with:

```ruby
quantity = gets.chomp.to_i
```

Now save your changes and run your `app.rb` file. You should see something like this:

<img src="https://s3.amazonaws.com/after-school-assets/order-total">

Perfect!

### Step 16

Last, we just need to clean up the total. If the user were to just see a number appear on the screen, they would have no idea what the number meant. Is it their order number? The total? Just a random number?

Go ahead and replace `puts 18 * quantity` with:
```ruby
total = 18 * quantity
```

Now, we're storing the total cost in the variable `total`.

Copy and paste the following to `app.rb`

```ruby
puts "Your total is $" + total.to_s
```

Here, we're using **String Concatenation**, which is basically addition of strings. We're using then Ruby `to_s` method to turn an integer into a string. The `total` variable is storing an integer of the total cost of the pizzas, so we're converting `216` to `"216"` so we can add it to the first piece of the string `"Your total is $"`.

This string concatenation will give us `"Your total is $216"`. And last, we're using `puts` to print that string to the console:

<img src="https://s3.amazonaws.com/after-school-assets/final-pizza-order">

LOOK WHAT YOU DID!!!! You just built an amazing command line input-ouput application on your first day of learning Ruby!!! Congrats!!!!


## Final Code

Your final code should look like this:

```ruby
puts "Welcome to the most amazing pizza store ever"
puts "What would you like to order?"
order = gets
puts "How many would you like?"
quantity = gets.chomp.to_i
total =  18 * quantity
puts "Your total is $" + total.to_s
``` 
## Share Share Share!
Show of your work by taking a screenshot of your filled treasure box or code and share with **\#flatironcodeclub** and **\#OrderUp**


## Done and Done

Lastly, you need to enter in terminal in Nitrous `learn submit`. This command will push your work to GitHub and mark this lesson as complete in Learn!
