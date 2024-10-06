"""Sample filters for doing mildly useful things using FilterPipes."""

try:
    from FilterPipes import filterpipes  # ST3-style import
except ImportError:
    import filterpipes  # ST2-style import


class ReverseWordsCommand(filterpipes.FilterPipesCommandBase):
    """Reverse the order of selected words. Extremely simple example."""
    def filter(self, data):
        return " ".join(reversed(data.split(" ")))


class CamelCaseFilterCommand(filterpipes.FilterPipesCommandBase):
    """Converts words_with_underlines to CamelCase."""
    initial_caps = True

    def filter(self, data):
        next_upper = self.initial_caps
        out = []
        for c in data:
            if c == '_':
                next_upper = True
            elif c.islower():
                if next_upper:
                    out.append(c.upper())
                else:
                    out.append(c)
                next_upper = False
            else:
                next_upper = self.initial_caps and not c.isalnum()
                out.append(c)
        return ''.join(out)


class UnderscoreCaseFilterCommand(filterpipes.FilterPipesCommandBase):
    """Converts CamelCase to words_with_underlines."""

    def filter(self, data):
        prev_lower = False
        out = []
        for c in data:
            if c.isupper():
                if prev_lower:
                    out.append('_')
                out.append(c.lower())
                prev_lower = False
            elif c.islower():
                prev_lower = True
                out.append(c)
            else:
                prev_lower = False
                out.append(c)
        return ''.join(out)
