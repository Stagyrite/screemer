# Screemer

I speak [Streem](https://github.com/matz/streem "matz/streem: prototype of stream based programming language"), a prototype of a stream-based programming language. Screemer is a set of example programs in [Streem](https://github.com/matz/streem "matz/streem: prototype of stream based programming language") programming language. a beginning of something that should end as a [Streem](https://github.com/matz/streem "matz/streem: prototype of stream based programming language") documentation project. 

## The Examples

Run the examples with Docker to speak Streem.

```shell
git clone https://github.com/Stagyrite/speakingstreem.git
cd speakingstreem
docker build --tag 'speakingstreem' .
```

## Streem Language Documentation

### Code comments

All code comments are prefixed with a hash.

```ruby
# minimal program
```

### Types

| Value | Type |
| :---: | :---: |
| "HELLO, world" | string |
| 42 | integer |
| 4.2 | float |
| [1,2,3] | array |
| x -> x | function |
| map, flatmap etc | built-in function |
| stdin, stdout etc | file descriptor |

### Assigning a variable

Here's how to assign the 42 value to variable x.

```ruby
x = 42
```

Over here, we assign "HELLO, world" to a variable s.

```ruby
s = "HELLO, world"
```

### Concatenate strings

Strings can be concatenated with the plus operator. Here's an example that can be part of a traditional Hello World program.

```ruby
name = "world"
s = "HELLO, " + name
```

The s parameter's value is now "HELLO, world".

### Array

Arrays are one of the fundamental data types in Streem.

```ruby
x = ["HELLO,", "world"]
```

## Streem Library Documentation

### Print

The print() function is used for printing to standard output, although there are other methods as well.

```ruby
# Output: HELLO, world
s = "HELLO, world"
print(s)
```

### Standard I/O

The 'stdin', 'stdout' and 'stderr' are file descriptors used for the standard I/O operations.

### Stream

Arrays are fundamental data types because they can be used with a streaming operator |.

```ruby
x = ["HELLO,", "world"]
x | stdout

# Output:
# HELLO,
# world
```

The 'stderr' file descriptor could have also been used in this example.

### Functions

Functions are defined within the curly brackets in a lambda-expression manner. Arguments are used, and the last expression is the return value.

```ruby
# Output: HELLO, world
hello = { name ->
	"HELLO, " + name
}

s = hello("world")
print(s)
```

### Streaming bar graph

A trivial example that counts down from 3 to 0.

```ruby
graph = graph_bar()
[3, 2, 1, 0] | graph
```

It fills it with numbers from the range 1 to 250.

```ruby
graph = graph_bar()
seq(250) | graph
```

## Math Library Documentation

Streem includes a wide range of mathematical functions, inspired by those available in the C standard library.

### Constants

#### PI

Represents the mathematical constant π, accurate to the platform's precision.

```ruby
# Output: 3.1415926353898
print(PI)
```

#### E

Represents Euler's number, *e*, used in many exponential and logarithmic calculations.

```ruby
# Output: 2.718281828459
print(E)
```

### Number-Theoretic and Numeric Functions

#### ceil(x)

Returns the smallest integer not less than `x`.

```ruby
# Output: 46
print(ceil(45.54))
```

#### fabs(x)

Returns the non-negative value of `x`.

```ruby
# Output: 2
print(fabs(-2))
```

#### gcd(x, y)

Computes the largest whole number that divides both `x` and `y`. Inputs must be integers.

```ruby
# Output: 2
print(gcd(4,10))
```

#### trunc(x)

Cuts off the decimal part of `x`, leaving just the integer component.

```ruby
# Output: 9
print(trunc(9.13))
```

#### int(x)

Alias for `trunc(x)` — returns the integer part of a number.

#### floor(x)

Returns the greatest integer less than or equal to `x`.

```ruby
# Output: 2
print(floor(2.7))
```

#### round(x)

Rounds `x` to the nearest integer.

```ruby
# Output: 10
print(round(9.76))
```

#### frexp(x, y)

Breaks down `x` into a normalized fraction and an exponent. The exponent is stored in `y`.

```ruby
# Output: 0.512500
print(frexp(16.4,5))
```

#### ldexp(x, y)

Calculates `x * 2^y` — effectively the inverse of `frexp`.

```ruby
# Output: 6.00000
print(ldexp(6,3))
```

### Trigonometric Functions

#### sin(x)

Returns the sine of `x`, where `x` is in radians.

#### cos(x)

Returns the cosine of `x` (radians).

#### tan(x)

Returns the tangent of `x` (radians).

#### asin(x)

Returns the angle whose sine is `x`.

#### acos(x)

Returns the angle whose cosine is `x`.

#### atan(x)

Returns the angle whose tangent is `x`.

#### hypot(x, y)

Calculates the length of the hypotenuse: `sqrt(x² + y²)`.

```ruby
# Output: 5
print(hypot(3,4))
```

### Hyperbolic Functions

#### asinh(x)

Computes the inverse hyperbolic sine of `x`.

#### acosh(x)

Computes the inverse hyperbolic cosine of `x`.

#### atanh(x)

Computes the inverse hyperbolic tangent of `x`.

#### cosh(x)

Returns the hyperbolic cosine of `x`.

#### sinh(x)

Returns the hyperbolic sine of `x`.

#### tanh(x)

Returns the hyperbolic tangent of `x`.

### Logarithmic Functions

#### exp(x)

Returns *e* raised to the power of `x`.

#### log(x)

Computes the natural logarithm (base *e*) of `x`.

#### log2(x)

Computes the base-2 logarithm of `x`.

#### log10(x)

Computes the base-10 logarithm of `x`.

### Power Functions

#### pow(x, y)

Returns the result of raising `x` to the power of `y`.

```ruby
# Output: 25
print(pow(5,2))
```

#### sqrt(x)

Returns the square root of `x`.

```ruby
# Output: 5
print(sqrt(25))
```

---

👒🏴‍☠️⛵🌊
