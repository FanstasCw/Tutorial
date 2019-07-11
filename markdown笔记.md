# markdown 学习笔记

### 标题使用 #:
# 这是 <h1> 一级标题
## 这是 <h2> 二级标题
### 这是 <h3> 三级标题
#### 这是 <h4> 四级标题
##### 这是 <h5> 五级标题
###### 这是 <h6> 六级标题


### **文本强调 * or _:**
**单 \* or _ 号 文字斜体**   如： *斜体* _大西瓜_ <br>
**双 \* or _ 号 文字加粗**   如： **加粗** __大西瓜__<br>
**三 \* or _ 号 文字粗斜体** 如：***粗斜体*** ___大西瓜___<br> 



### **Lists 列表:**
#### Unordered 无序列表：
* 无序列表
* 子项
* 子项
+ 西瓜
+ 葡萄
+ 苹果
- 桃子
- 香蕉
- 橘子
#### Ordered 有序列表：
1.吃饭
2.睡觉
3.打豆豆

1.吃饭
- 早饭
- 中饭
- 晚饭

1. Item 1
1. Item 2
1. Item 3
   1. Item 3a
   1. Item 3b

* Item 1
* Item 2
  * Item 2a
  * Item 2b

[GitHub](http://github.com)
[百度](http://www.baidu.com)
正如 Kanye West 所说：

> We're living the future so
> the present is our past.

我觉得你应该在这里使用
`<addr>` 才对。

```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
```

```javascript {.class1 .class}
function add(x, y) {
  return x + y
}
```


```javascript {.line-numbers}
function add(x, y) {
  return x + y
}
```

- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> supported
- [x] list syntax required (any unordered or ordered list supported)
- [ ] this is a complete item
- [x] this is an incomplete item

First Header | Second Header
------------ | -------------
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column


节目名称 | 