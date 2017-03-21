# nat-network-stream

- [Documentation](http://natjs.com/#/#stream)
- [Github](https://github.com/natjs/weex-nat-network-stream)

## Installation
```
weexpack plugin add nat-network-stream
```

```
npm install natjs --save
```

## Usage

Use in weex file (.we)

```html
<script>
import 'Nat' from 'natjs'

Nat.fetch('http://domain.com/api', {
    method: 'GET',
    type: 'json'
}, (err, ret) => {
    console.log(ret)
})

</script>
```

See the Nat [Documentation](http://natjs.com/) for more details.
