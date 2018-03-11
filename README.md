# Takeaway Challenge (Makers Academy Weekend Challenge #2)

A basic simulation of a takeaway ordering program that utilises the Twilio API to send a text message as a confirmation once an order is received.

## Contents
/lib  
menu.rb  
takeaway.rb  
text_sender.rb  

/spec  
takeaway_spec.rb  
text_sender_spec.rb

## Getting Started

1) Clone or download and unzip repository.   
`git clone https://github.com/TomJamesDuffy/takeaway_challenge.git`

2) Install dependencies listed in the Gemfile
`bundle install`  

3) The program requires a [Twilio](https://www.twilio.com/) account, with a twilio number, secure ID and authorisation token stored as environmental variables with the following names:
```
TWILIO_ACCOUNT_SSID: 'your SID here'
TWILIO_AUTH_TOKEN: 'your token here'
TWILIO_FROM: 'your number here'
```

In the current program these variables are stored locally. To find out how to set these click [here](https://www.twilio.com/blog/2017/01/how-to-set-environment-variables.html).

Pass the phone number you wish to use to the instance of the TextSender object created when calling the sms confirmation method.

## Instructions for use

There are three objects in the program - menu, takeaway and text_sender. In order to use the takeaway service you only need to interface with the takeaway object.

To make a takeaway object:

`takeaway = Takeaway.new`

**Takeaway**  

From a takeaway you can show the menu, place an order, make a guess as to the amount of your order, get a receipt and receive an sms confirmation.

Takeaway.show_menu  
Takeaway.place_order  
Takeaway.guess_amount  
Takeaway.receipt  
Takeaway.sms_confimation  

## Testing

If you have followed the above instructions dependencies will be installed. To run the tests proceed to the home directory and run Rspec.

`rspec`
