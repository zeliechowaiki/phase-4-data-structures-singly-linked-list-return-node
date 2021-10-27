# Singly Linked List Return Node Lab

## Learning Goals

- Build a Singly Linked List and use it to solve an algorithm

## Introduction

Now that we have learned to build out our `LinkedList` and `Node` classes, as
well as implemented some common methods to get a feel for working with linked
lists, let's use our Singly Linked List to solve an algorithm!

Fork and clone this lab; you'll be coding in the `lib` folder. You can
run the tests at any point using `learn test` to check your work.

## Instructions

Write a method `#nth_from_end` that takes a number `n` and returns the value at
the `n`th node from the **end** of the linked list. If the `n`th node does not
exist, return `nil`.

For example, when given a linked list `3 -> 2 -> 1`:

- When `n = 1`, return `1` (the element at the end of the list)
- When `n = 3`, return `3` (the third element from the end)
- When `n = 4`, return `nil` (since 4 is greater than the length of the list)
