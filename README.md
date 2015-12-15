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

Go ahead and change the string in `app.rb`. Save your changes and run the file again by entering in terminal `ruby app.rb`. Whatever you entered as your string should be printed in the terminal.

