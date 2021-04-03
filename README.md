# Caesar Cipher

Caesar Cipher project from The Odin Project, [found here](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/caesar-cipher).

The goal of this project was to implement a Caesar cipher method using Ruby.

## Cipher Explanation

The Caesar cipher is a relatively simple message encrypter that was allegedly used by the emporer Julius Caesar to encrypt messages meant for his generals.

The cipher operates on the following principles:

- Every letter of the alphabet being used in the message has an index value
  - For English this would start with 'A' in position 0, 'B' in position 1, and so on
- The cipher uses an integer based value to shift the position of each letter of the alphabet
  - A cipher value of 5, used with English, would shift 'A' to position 5, shift 'B' to position 6, and so on.

## Project Guidelines

The project specified the following guidelines:

- The cipher must accept a message (string) and cipher (integer) parameter
- The cipher must wrap around the alphabet if a position would go out of bounds of the alphabet
- The case for each position must be preserved after the message is encrypted
- Only letter characters are encrypted. Punctuation must be preserved in the encrypted message.

## Design Decisions

As an English speaker I decided to implement this method with the English alphabet.

Code formatting follows the [Ruby Style Guide](https://github.com/rubocop/ruby-style-guide) by rubocop.

In my programs I try to account for unexpected user inputs. In this case I wanted to ensure my cipher could handle a cipher number greater than 26.

The user of the cipher will need to use a positive cipher shift value. I considered adding the ability to run the cipher with a negative cipher shift value, but decided that functionality would closely mirror a 'decoder' method for the Caesar cipher. In the future I may add that as a separate method.
