# ruby-caesar-cipher
Exercise from https://www.theodinproject.com/lessons/ruby-caesar-cipher

# Usage

1. **Clone the repository:**
   ```bash
   git clone https://github.com/marcosdima/odin-ruby-projects.git
   ```

2. **Navigate to the folder:**
   ```bash
   cd odin-ruby-projects/basic/cipher
   ```

3. **Run the cipher:**
   ```bash
   ruby cipher.rb "YOUR_STRING" SHIFT_NUMBER
   ```

   - `YOUR_STRING`: The text you want to encrypt (must be provided)
   - `SHIFT_NUMBER`: The number of positions to shift each letter (e.g., 1, 5, 13, -1)

4. **Examples:**
   ```bash
   ruby cipher.rb "What a string!" 5
   ```
   Output: `"Bmfy f xywnsl!"`

   ---

    ```bash
   ruby cipher.rb "ABCDE" -1
   ```
   Output: `"ZABCD"`