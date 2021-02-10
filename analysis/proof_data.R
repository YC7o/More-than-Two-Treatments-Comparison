# Type of leather (TL)
TL <- rep(c("A", "B", "C", "D"), each = 6)

# Weight loss (WL)
A <- c(264, 260, 258, 241, 262, 255)
B <- c(208, 220, 216, 200, 213, 206)
C <- c(220, 263, 219, 225, 230, 228)
D <- c(217, 226, 215, 227, 220, 222)

# Proof data

proof_data <- data.frame(
  TL = TL,
  WL = c(A, B, C, D)
)

write.csv(proof_data, file = "data/proof_data.csv")

wl_aov <- aov(WL ~ TL, data = proof_data)
wl_lm <- lm(WL ~ TL, data = proof_data)
