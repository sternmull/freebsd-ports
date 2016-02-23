--- selftest/ensure_equals.cpp.orig	2014-10-09 17:49:19 UTC
+++ selftest/ensure_equals.cpp
@@ -237,13 +237,13 @@ struct Key
 
 typedef std::string Value;
 
-}
-
 std::ostream &operator<<(std::ostream &ss, const std::pair<Key, Value> &pair)
 {
     return ss << "(" << pair.first.k_ << "," << pair.second << ")";
 }
 
+}
+
 /**
  * Checks nagative ensure_equals with iterator range
  */
