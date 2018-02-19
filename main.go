/*
Copyright 2018 The hello Authors.
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/
package main

import "fmt"

/*
The hello import path works because:
1. GOPATH is set to ~/go i.e. go 'workspace'
2. go expect that tree structure is GOPATH/src
3. Below src the defined project home: github.com/berrak/hello
*/

func main() {
	s := "Hello world"
	revMsg := Reverse(s)
	fmt.Println(revMsg)
}
