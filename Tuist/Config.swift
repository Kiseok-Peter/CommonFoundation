import ProjectDescription

let config = Config(
    plugins: [
        .local(path: .relativeToRoot("Plugins/CommonFoundation")),
        .git(url: "git@github.com:Kiseok-Peter/TuistTemplate.git", sha: "66ca149")
    ]
)
