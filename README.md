InstaCode
===============

One step setup Linux based coding environment for beginners on Windows.

![image](http://www.getinstacode.com/screenshot.png)

We did this project at Hack Princeton 2014! We successfully integrated Brackets with Vagrant to create a one-step-setup coding environment.

### Setting up a development environment is hard for beginners

Many programming tutorials assume the the reader:

- Has Linux or OSX
- Knows how to use the terminal
- Knows how to use a text editor

Whenever you exit the Silicon Valley/University/Starbucks bubble, you see that most people:

- Have Windows
- Have never touched a terminal
- Don't know what a text editor is in the context of programming

According to [this Wikipedia article](http://en.wikipedia.org/wiki/Usage_share_of_operating_systems), Windows has over 90% market share. Since it is so hard to install modern development tools for Python, Ruby, and JavaScript on Windows, most people have a huge hurdle to overcome when they are trying to learn to code.

For absolute beginners, this can be pretty daunting and I'm sure many give up right away.  When I was first learning to code the hardest part (and the one that wasn't really covered anywhere) was setting up a development environment to get a `Hello world!` program running.

### Requirements

- One-step installation with Windows installer
- No need to learn terminal commands
- Exact representation of Linux environment so there are no weird Windows-specific errors

### Previous Solutions

There are a few solutions to this problem available now, but they aren't optimal:

- **Web-Based IDE** - Solutions like Nitrous.io and Cloud9 are very easy to get started with, but often don't support full interaction with the VM.  Sometimes, they make you configure your app in specific ways to work inside their framework. Any solution designed for beginners should not require any non-standard configuration.
- **Local Virtual Machine** - Virtual machine software lets you run a linux environment on your local machine, but this requires beginners to learn how to set up all of the settings and know their way around the guest operating system. This solution is the most complete and provides a very solid development environment, but requires a lot of complicated setup.
- **Cygwin or other Windows terminal emulator** - This isn't really a good option because it doesn't come with all of the other programs that usually come with a linux distribution, and so lots of the examples beginners would find online wouldn't work.