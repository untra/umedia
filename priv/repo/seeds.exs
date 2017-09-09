# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Umedia.Repo.insert!(%Umedia.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Umedia.Brain.{Emotion, Thing, Character

Umedia.Repo.insert!(%Emotion{name: "grinning", emoji_identifier: "😀"})
Umedia.Repo.insert!(%Emotion{name: "smiling", emoji_identifier: "☺️"})
Umedia.Repo.insert!(%Emotion{name: "neutral", emoji_identifier: "😐"})
Umedia.Repo.insert!(%Emotion{name: "frowning", emoji_identifier: "☹️"})
Umedia.Repo.insert!(%Emotion{name: "angry", emoji_identifier: "😠"})
Umedia.Repo.insert!(%Emotion{name: "afraid", emoji_identifier: "😨"})
Umedia.Repo.insert!(%Emotion{name: "crying", emoji_identifier: "😢"})
Umedia.Repo.insert!(%Emotion{name: "laughing", emoji_identifier: "😆"})
Umedia.Repo.insert!(%Emotion{name: "embarressed", emoji_identifier: "😳"})
Umedia.Repo.insert!(%Emotion{name: "infatuated", emoji_identifier: "😍"})
Umedia.Repo.insert!(%Emotion{name: "smirking", emoji_identifier: "😏"})
Umedia.Repo.insert!(%Emotion{name: "dissapointed", emoji_identifier: "😞"})
Umedia.Repo.insert!(%Emotion{name: "confused", emoji_identifier: "😕"})
Umedia.Repo.insert!(%Emotion{name: "surprised", emoji_identifier: "😮"})
Umedia.Repo.insert!(%Emotion{name: "winking", emoji_identifier: "😉"})
Umedia.Repo.insert!(%Emotion{name: "drooling", emoji_identifier: "🤤"})
Umedia.Repo.insert!(%Emotion{name: "eye rolling", emoji_identifier: "🙄"})
Umedia.Repo.insert!(%Emotion{name: "thinking", emoji_identifier: "🤔"})
