#!/bin/bash

# Function to generate random text
generate_random_text() {
  # List of random paragraphs in Lorem Ipsum
  random_texts=("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a augue nec libero pellentesque fringilla. Maecenas sit amet felis et nibh tincidunt fermentum. Nulla facilisi. Integer suscipit arcu nec nunc pharetra dapibus. Etiam id ex id mi congue congue. Vivamus sit amet enim sit amet neque congue fermentum a quis risus. Nulla rhoncus mi eu massa gravida dictum. Sed ut ultrices ex. Integer efficitur sagittis odio, id finibus dui. Vivamus et egestas velit. In convallis feugiat metus in facilisis.###"
    "Praesent consectetur, tellus a congue consequat, orci justo bibendum ex, in maximus massa nunc vel tellus. Nullam auctor arcu vel elit luctus bibendum. Cras eget varius sapien. Donec rutrum justo ipsum, vitae consequat urna volutpat eu. Integer vitae ipsum nec justo sodales euismod. Aenean nec odio suscipit, gravida tellus vel, interdum odio. In nec consequat turpis. Nunc posuere, odio ac gravida volutpat, dolor tortor venenatis libero, a fermentum arcu turpis id purus. Fusce eu gravida sapien. Vivamus tincidunt fermentum dignissim. Nulla facilisi.###"
    "Mauris tincidunt mauris vel metus elementum bibendum. Donec euismod sapien ut consectetur eleifend. Integer suscipit euismod libero, a lacinia dui bibendum eu. Proin non dolor sit amet nisi varius tincidunt. Quisque bibendum, erat in tempus pellentesque, velit erat accumsan lorem, nec gravida tellus urna eu tortor. Ut facilisis aliquet metus, eget dictum metus aliquam ut. Nunc nec lectus in lacus scelerisque feugiat. Vivamus sit amet justo sit amet urna dignissim fringilla. Nam vulputate laoreet ex, sit amet auctor odio dapibus quis.###"
  )

  # Get the length of the random_texts array
  num_texts=${#random_texts[@]}

  # Generate a random index
  random_index=$(( RANDOM % num_texts ))

  # Get the random text using the random index
  echo "${random_texts[random_index]}" | tr '###' '\n'
}

# Function to generate a random color
generate_random_color() {
  # List of ANSI color codes
  colors=("31" "32" "33" "34" "35" "36" "37")

  # Get the length of the colors array
  num_colors=${#colors[@]}

  # Generate a random index
  random_index=$(( RANDOM % num_colors ))

  # Get the random color using the random index
  echo "${colors[random_index]}"
}

# Infinite loop to print random text every second
while true; do
  random_text=$(generate_random_text)
  random_color=$(generate_random_color)

  # Format the output with random color and multiple lines
  paragraphs=$(echo -e "$random_text")
  while read -r paragraph; do
    printf "\e[%sm%s\e[0m\n" "$random_color" "$paragraph"
  done <<< "$paragraphs"
  
  sleep 1
done
