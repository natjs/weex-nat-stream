# nat-stream

- [Documentation](http://natjs.com/#/reference/network/stream)
- [Github](https://github.com/natjs/weex-nat-stream)

## Installation
```
weexpack plugin add nat-stream
```

```
npm install natjs --save
```

## Usage

Use in weex project (`.vue`/`.we`)

```html
<script>
import Nat from 'natjs'

Nat.fetch('http://domain.com/api', {
    method: 'GET',
    type: 'json'
}, (err, ret) => {
    console.log(ret)
})

</script>
```

See the Nat [Documentation](http://natjs.com/) for more details.
