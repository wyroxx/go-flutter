package calculator

import (
	"errors"
	"fmt"
	"strconv"
)

// ErrDivisionByZero is returned when attempting to divide by zero
var ErrDivisionByZero = errors.New("division by zero")
var ErrInvalidInput = errors.New("invalid input string")

// Add returns the sum of two numbers
func Add(a, b float64) float64 {
	return a + b
}

// Subtract returns the difference between two numbers
func Subtract(a, b float64) float64 {
	return a - b
}

// Multiply returns the product of two numbers
func Multiply(a, b float64) float64 {
	return a * b
}

// Divide returns the quotient of two numbers
func Divide(a, b float64) (float64, error) {
	if b == 0 {
		return 0, ErrDivisionByZero
	} else {
		return a / b, nil
	}
}

// StringToFloat converts a string to float64
func StringToFloat(s string) (float64, error) {
	f, err := strconv.ParseFloat(s, 64)
	if err != nil {
		return 0, fmt.Errorf("%w: %v", ErrInvalidInput, err)
	}
	return f, nil
}

// FloatToString converts a float64 to string with specified precision
func FloatToString(f float64, precision int) string {
	format := fmt.Sprintf("%%.%df", precision)
	return fmt.Sprintf(format, f)
}
