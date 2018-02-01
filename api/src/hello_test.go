package src

import "testing"

func TestGetMessage(t *testing.T) {
	result := getMessage()

	if result != "Hello, world!!" {
		t.Fatal("failed test")
	}
}
