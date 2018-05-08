```st=>start: 注册印象笔记
e=>end: 您可以使用markdown
op1=>operation: 登录印象笔记
op2=>operation: 购买并登录马克飞象
cond=>condition: 是否已经购买并登录了马克飞象?

st->op1->cond
cond(yes)->e
cond(no)->op2->e
```

```flow
st[注册印象笔记]-->a
a{是否已经购买马克飞象}
a-->|是|b1(您已购买马克飞象可以使用markdown语法)
a-->|否|b2(您还未能成功购买马克飞象但你可以免费试用10天)
b1-->c[欢迎使用马克飞象]
b2-->d{是否要购买马克飞象}
d-->|是|e1(您已成功购买马克飞象欢迎使用)
e1-->c
d-->|否|e2(试用10天后将会到期欢迎购买)
```
