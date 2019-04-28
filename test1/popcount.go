/* 这是一个显示位数测试 */
package main

import (
	"fmt"
)

func main() {
	var pc [256]byte
	for i := range pc {
		pc[i] = pc[i/2] + byte(i&1)
	}
	fmt.Printf("pc=>%v\n", pc)
}
