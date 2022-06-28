# Mason Bricks

<p align="center">
  <img src="https://raw.githubusercontent.com/felangel/mason/master/assets/mason_full.png" height="125" alt="mason logo" />
</p>

<p align="center">
  <a href="https://github.com/felangel/mason"><img src="https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge" alt="powered by mason"></a>
  <a href="https://pub.dev/documentation/mason_cli/latest/"><img src="https://img.shields.io/pub/v/mason_cli.svg?label=mason" alt="mason"></a>
</p>

A collection of bricks that enable developers consume reusable templates, thanks to [mason](https://github.com/felangel/mason).

---

## My Bricks 🧱

### [go_router_brick](https://github.com/cgutierr-zgz/mason_bricks/tree/master/bricks/go_router_brick)
### [42_project](https://github.com/cgutierr-zgz/mason_bricks/tree/master/bricks/42_project)

## Usage ✨

### Locally
```sh
$ mason get && mason make <brick_name> -o generated
```

### From [brickhub.dev](https://brickhub.dev/)
You need to install [mason_cli](https://pub.dev/documentation/mason_cli/latest/)
```sh
$ dart pub global activate mason_cli

// Install locally
$ mason add <brick_name> 

// Install globally
$ mason add -g <brick_name> 
```

## Publishing 🚀

Update the changelog and the version and run

```sh
$ mason publish
```
