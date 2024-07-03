FROM python:3.9 
# Or any preferred Python version.
RUN mkdir -p /home/app/gui
COPY *.py /home/app/gui
COPY *.txt /home/app/gui
COPY *.sh /home/app/gui
WORKDIR "/home/app/gui"
RUN pip install -r requirements.txt

# Install playwright and then its dependencies (the browsers)
RUN pip install playwright
RUN playwright install
RUN playwright install-deps

CMD ["which","chromium"]
RUN chmod 777 *.sh
CMD ["playwright", "install"]
CMD ["ls"]
CMD ["bash","run_ci_steps.sh","TEST"] 
