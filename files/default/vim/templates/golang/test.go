package main

import "strconv"

type Data struct {
        r   string
        cnt int
}

func NewData(input string) *Data {
        return &Data{
                r:   input,
                cnt: 0,
        }
}

func (h *Data) hello() string {
        h.cnt = h.cnt + 1
        return "hello " + h.r + strconv.Itoa(h.cnt)
}
