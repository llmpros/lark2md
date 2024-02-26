package utils_test

import (
	"errors"
	"testing"

	"github.com/llmpros/lark2md/utils"
)

func TestCheckErr(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Errorf("The CheckErr did not panic")
		}
	}()

	err := errors.New("This is an error message.")
	utils.CheckErr(err)
}
