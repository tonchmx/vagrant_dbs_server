# Vagrant DBs Server
A simple vagrant file with multiples dbs including.

Documentation based in [Scotch Box][0]

## Databases

* mongodb
* MySQL

## Get Started

* Download and install [Vagrant][1]
* Download and install [Virtualbox][2]
* Clone the repository
* Run ```vagrant up```
* Enjoy

## Basic Vagrant Commands

### Start or resume the server

```bash
vagrant up
```

### Stop the server

```bash
vagrant halt
```

### Pause the server

```bash
vagrant suspend
```

### Reload the server

```bash
vagrant reload
```

### Delete the server

```bash
vagrant destroy
```

### SSH into the server
```bash
vagrant ssh
```


## Database access

### mongodb

* Hostname: localhost or 127.0.0.1 or 192.168.56.101
* Port: 27017 (default mongodb port)


### MySQL

* Hostname: localhost or 127.0.0.1 or 192.168.56.101
* Port: 3306 (default mysql port)
* User: vagrant
* Password: vagrant

## MIT License

Copyright (c) 2016 Antonio Cruz, On My Mind

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[0]: https://github.com/scotch-io/scotch-box
[1]: https://www.vagrantup.com/downloads.html
[2]: https://www.virtualbox.org/wiki/Downloads