import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression

df = pd.read_csv("/home/zayd/train.csv")

# 'updated' is your DataFrame here
updated = df.drop(["Name", "Ticket", "Cabin", "Embarked", "Fare"], axis=1)

updated.columns = updated.columns.str.strip()
updated["Sex"] = updated["Sex"].astype(str).str.strip().str.capitalize()
updated["Sex"] = updated["Sex"].map({'Male': 1, 'Female': 0})
updated["Sex"] = updated["Sex"].astype(int)

updated = updated.dropna(subset=['Age'])

corr = updated.corr(numeric_only=True)
print(corr["Survived"].sort_values(ascending=False))

# X uses the DataFrame 'updated'
X = updated[["Parch", "Age", "Sex", "Pclass", "SibSp"]]

# y is your target series
y = updated["Survived"]

X_train, X_test, y_train, y_test = train_test_split(
    X, y,
    random_state=42,
    stratify=y,
    test_size=0.2
)

reg = LogisticRegression().fit(X_train, y_train)
print("Train Accuracy:", reg.score(X_train, y_train))
print("Test Accuracy:", reg.score(X_test, y_test))
