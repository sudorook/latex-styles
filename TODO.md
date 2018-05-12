1. Modify resume header so that the information on the left is listed with
   multiple items per lines instead of just one. Have \makeheader:
   - Count the non-empty optional arguments provided.
   - If more than three, have two per line and separate them by \blacklozenge.
2. Create an example (and class, if necessary) for CVs. Modify the resume to:
   - Use a single column.
   - Split the Skills chart into >2 columns.
3. Text highlighting is very wonky.
4. Change the makefile. Giving `make` and `make install` completely different
   functions is confusing.
