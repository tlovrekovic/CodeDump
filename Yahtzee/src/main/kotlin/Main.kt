import java.util.*

const val NUM_DICE = 6
const val NUM_SIDES = 6

fun main() {
    println("Welcome to Yahtzee!")
    val scanner = Scanner(System.`in`)
    val dice = IntArray(NUM_DICE)
    val lockedDice = BooleanArray(NUM_DICE)
    val random = Random()
    var rollsRemaining = 3

    while (rollsRemaining > 0) {
        println("Rolls remaining: $rollsRemaining")
        println("1. Roll all dice")
        println("2. Lock/unlock dice")
        println("3. Check roll results")
        println("4. Exit")
        println("Choose an option:")
        val choice = scanner.nextInt()

        when (choice) {
            1 -> {
                if (rollsRemaining == 0) {
                    println("No rolls remaining. Please choose another option.")
                } else {
                    for (i in 0 until NUM_DICE) {
                        if (!lockedDice[i]) {
                            dice[i] = random.nextInt(NUM_SIDES) + 1
                        }
                    }
                    println("You rolled: ${dice.joinToString(", ")}")
                    rollsRemaining--
                }
            }
            2 -> {
                println("Enter the indices of the dice you want to lock/unlock (e.g. 1 3 5), or 0 to cancel:")
                val input = scanner.nextLine().trim()
                if (input == "0") {
                    continue
                }

                val indices = input.split(" ").mapNotNull { it.toIntOrNull() }
                for (index in indices) {
                    lockedDice[index - 1] = !lockedDice[index - 1]
                }
            }
            3 -> {
                println("1. Check for Jamb")
                println("2. Check for Poker")
                println("3. Check for Scale")
                println("Choose an option:")
                val checkChoice = scanner.nextInt()

                when (checkChoice) {
                    1 -> {
                        if (isJamb(dice)) {
                            println("Jamb!")
                        } else {
                            println("Not Jamb.")
                        }
                    }
                    2 -> {
                        if (isPoker(dice)) {
                            println("Poker!")
                        } else {
                            println("Not Poker.")
                        }
                    }
                    3 -> {
                        if (isScale(dice)) {
                            println("Scale!")
                        } else {
                            println("Not Scale.")
                        }
                    }
                    else -> {
                        println("Invalid option. Please choose again.")
                    }
                }
            }
            4 -> {
                println("Exiting the game.")
                break
            }
            else -> {
                println("Invalid option. Please choose again.")
            }
        }
    }
}

fun isJamb(dice: IntArray): Boolean {
    val firstDie = dice[0]
    for (i in 1 until NUM_DICE) {
        if (dice[i] != firstDie) {
            return false
        }
    }
    return true
}

fun isPoker(dice: IntArray): Boolean {
    val counts = IntArray(NUM_SIDES)
    for (i in 0 until NUM_DICE) {
        counts[dice[i] - 1]++
    }
    return counts.any
    { it == 4 }
}

fun isScale(dice: IntArray): Boolean {
    dice.sort()
    for (i in 0 until NUM_DICE - 1) {
        if (dice[i] != dice[i + 1] - 1) {
            return false
        }
    }
    return true
}