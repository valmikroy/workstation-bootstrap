package main

import "testing"

func TestHello(t *testing.T) {

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
