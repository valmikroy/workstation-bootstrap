package main

import (
        //"fmt"
        "io/ioutil"
        "strings"
        "testing"
)



func TestStringInput(t *testing.T) {

        assertCorrectMessage := func(t *testing.T, input string, desired_out []string) {
                t.Helper()
                var d *Data = NewData(input)
                for _, out := range desired_out {
                        got := d.hello()
                        if got != out {
                                t.Error("Expected output ", out, " but got ", got)
                        }
                }
        }

        t.Run("First test", func(t *testing.T) {
                t.Logf("first type")
                var input = "Abhishek"
                var desired_out = []string{
                        "hello Abhishek1",
                        "hello Abhishek2",
                        "hello Abhishek3",
                }
                assertCorrectMessage(t, input, desired_out)
        })
}

func TestFileInput(t *testing.T) {

        assertCorrectMessage := func(t *testing.T, content []byte, desired_out []string) {
                t.Helper()

                first_line := strings.Split(string(content), "\n")[0]
                first_word := strings.Fields(first_line)[0]
                var d *Data = NewData(first_word)
                for _, out := range desired_out {
                        got := d.hello()
                        if got != out {
                                t.Error("Expected output ", out, " but got ", got)
                        }
                }
        }

        t.Run("First test", func(t *testing.T) {
                t.Logf("second type")
                content, _ := ioutil.ReadFile("resources/F1_fru.out")
                var desired_out = []string{
                        "hello Abhishek1",
                        "hello Abhishek2",
                        "hello Abhishek3",
                }
                assertCorrectMessage(t, content, desired_out)
        })
}
