
# Java Concepts

## Table of Contents

1. [Introduction to Java](#introduction-to-java)
2. [Basic Syntax](#basic-syntax)
3. [Object-Oriented Programming](#object-oriented-programming)
4. [Data Types](#data-types)
5. [Variables](#variables)
6. [Operators](#operators)
7. [Control Flow](#control-flow)
8. [Arrays](#arrays)
9. [Methods](#methods)
10. [Exception Handling](#exception-handling)
11. [Multithreading](#multithreading)
12. [File I/O](#file-io)
13. [Collections Framework](#collections-framework)
14. [Generics](#generics)
15. [Lambda Expressions](#lambda-expressions)
16. [Streams API](#streams-api)
17. [Java Memory Management](#java-memory-management)
18. [JDBC](#jdbc)
19. [Servlets and JSP](#servlets-and-jsp)
20. [Java Networking](#java-networking)

## Introduction to Java

Java is a popular, versatile, object-oriented programming language.

Key features of Java include:
- Object-oriented
- Platform-independent
- Secure
- Robust
- Multithreaded
- High performance

## Basic Syntax

Java syntax includes:
- Case sensitivity
- Class names
- Method names
- Program file name
- Main method

## Object-Oriented Programming

Java is built around the concept of objects. Key OOP principles in Java include:

1. Encapsulation
2. Inheritance
3. Polymorphism
4. Abstraction

These principles allow for creating modular, reusable, and maintainable code.

## Data Types

Java has two categories of data types:

1. Primitive data types:
   - byte
   - short
   - int
   - long
   - float
   - double
   - boolean
   - char

2. Reference data types:
   - Classes
   - Interfaces
   - Arrays

Example:
```java
int number = 10;
String text = "Hello";
```

## Operators

1. Arithmetic operators =>  +, -, *, /, % (modulus)
2. Relational operators => ==, !=, >, <, >=, <=
3. Logical operators => &&, || , !
4. Assignment operators => =, +=, -=, *=, /=, %=
5. Bitwise operators => & , | , ^ , ~ , <<, >>, >>>
6. Ternary operator => ?:

## Control Flow

Java offers several control flow statements:

1. if-else statements
2. switch statements
3. loops => for , while , do while
6. break and continue statements

Example:
```java
if(condition){
//code
} else {
//code
}

switch(selector):
    case 1:
    default:

for (int i = 0; i < 5; i++) {
   //code
}

do {
//code
} while (condition)

```

## Arrays

Arrays in Java are used to store multiple values of the same type in a single variable.

Example:
```java
int[] numbers = {1, 2, 3, 4, 5};
```

## Methods

Methods in Java are blocks of code that perform specific tasks. They can accept parameters and return values.

Example:
```java
public int addNumbers(int a, int b) {
    return a + b;
}
```

## Exception Handling

Java provides a robust exception handling mechanism to deal with runtime errors. Key components include:

- try
- catch
- finally
- throw
- throws

## Multithreading

Java supports multithreading, allowing multiple threads of execution to run concurrently within a single program.

Key concepts include:
- Creating and starting threads
- Synchronization
- Thread communication

## File I/O

Java provides classes for reading from and writing to files. Key classes include:

- FileInputStream
- FileOutputStream
- FileReader
- FileWriter
- BufferedReader
- BufferedWriter

## Collections Framework

The Java Collections Framework provides a set of interfaces and classes for storing and manipulating groups of objects. Key interfaces include:

- List
- Set
- Map
- Queue

## Generics

Generics in Java allow for creating classes, interfaces, and methods that can work with different types while providing compile-time type safety.

Example:
```java
public class Box<T> {
    private T content;

    public void set(T content) {
        this.content = content;
    }

    public T get() {
        return content;
    }
}
```

## Lambda Expressions

Introduced in Java 8, lambda expressions provide a concise way to express instances of single-method interfaces (functional interfaces).

Example:
```java
Runnable r = () -> System.out.println("Hello, Lambda!");
```

## Streams API

The Streams API, introduced in Java 8, provides a functional approach to processing collections of objects.

Key features include:
- Filter
- Map
- Reduce
- Collect

## Java Memory Management

Java uses automatic memory management through garbage collection. Key concepts include:

- Heap memory
- Stack memory
- Garbage collection algorithms

## JDBC

Java Database Connectivity (JDBC) is an API for connecting and executing queries with a database.

Key components include:
- DriverManager
- Connection
- Statement
- ResultSet

## Servlets and JSP

Servlets and JavaServer Pages (JSP) are technologies used for creating web applications in Java.

Servlets are Java classes that handle requests and generate responses, while JSP allows embedding Java code in HTML pages.

## Java Networking

Java provides support for network programming, allowing for the creation of distributed applications.

Key classes include:
- Socket
- ServerSocket
- URL
- URLConnection

This comprehensive overview covers the main concepts of Java programming. Each topic can be explored in greater depth for a more thorough understanding of the language and its capabilities.
