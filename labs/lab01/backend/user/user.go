package user

import (
	"errors"
)

var (
	// ErrInvalidEmail is returned when the email format is invalid
	ErrInvalidEmail = errors.New("invalid email format")
	// ErrInvalidAge is returned when the age is invalid
	ErrInvalidAge = errors.New("invalid age: must be between 0 and 150")
	// ErrEmptyName is returned when the name is empty
	ErrEmptyName = errors.New("name cannot be empty")
)

// User represents a user in the system
type User struct {
	Name  string
	Age   int
	Email string
}

// NewUser creates a new user with validation
func NewUser(name string, age int, email string) (*User, error) {
	// TODO: Implement user creation with validation
	return nil, nil
}

// Validate checks if the user data is valid
func (u *User) Validate() error {
	// TODO: Implement user validation
	return nil
}

// String returns a string representation of the user
func (u *User) String() string {
	// TODO: Implement string representation
	return ""
}

// IsValidEmail checks if the email format is valid
func IsValidEmail(email string) bool {
	// TODO: Implement email validation
	return false
}
