import ProjectDescription

let config = Config(
    plugins: [
        .git(url: "git@github.com:Kiseok-Peter/TuistTemplate.git", tag: "1.0", directory: "Templates")
    ]
)
