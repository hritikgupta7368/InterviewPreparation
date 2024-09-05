# React Hooks

## 1. useState

- Condition: Used when you need to manage state in functional components.
- Important Points:
  - Returns an array with the current state value and a function to update it.
  - State updates are merged in class components, but replaced in functional components.

Example:
```jsx
import React, { useState } from 'react';

function Counter() {
  const [count, setCount] = useState(0);

  return (
    <div>
      <p>You clicked {count} times</p>
      <button onClick={() => setCount(count + 1)}>
        Click me
      </button>
    </div>
  );
}
```

## 2. useEffect

- Condition: Used for side effects in functional components (data fetching, subscriptions, DOM manipulation).
- Important Points:
  - Runs after every render by default.
  - Can specify dependencies to control when it runs.
  - Can return a cleanup function.

Example:
```jsx
import React, { useState, useEffect } from 'react';

function DataFetcher() {
  const [data, setData] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      const response = await fetch('https://api.example.com/data');
      const result = await response.json();
      setData(result);
    };

    fetchData();

    // Cleanup function
    return () => {
      // Cancel any ongoing requests or subscriptions
    };
  }, []); // Empty dependency array means this effect runs once on mount

  return (
    <div>{data ? <p>{data}</p> : <p>Loading...</p>}</div>
  );
}
```

## 3. useContext

- Condition: Used to consume context in functional components.
- Important Points:
  - Provides a way to pass data through the component tree without prop drilling.
  - Can be used with the Context API.

Example:
```jsx
import React, { useContext } from 'react';

const ThemeContext = React.createContext('light');

function ThemedButton() {
  const theme = useContext(ThemeContext);
  return <button style={{ background: theme }}>I am styled by theme context!</button>;
}
```

## 4. useReducer

- Condition: Used for complex state logic in functional components.
- Important Points:
  - Alternative to useState for complex state management.
  - Follows the reducer pattern similar to Redux.

Example:
```jsx
import React, { useReducer } from 'react';

const initialState = {count: 0};

function reducer(state, action) {
  switch (action.type) {
    case 'increment':
      return {count: state.count + 1};
    case 'decrement':
      return {count: state.count - 1};
    default:
      throw new Error();
  }
}

function Counter() {
  const [state, dispatch] = useReducer(reducer, initialState);
  return (
    <>
      Count: {state.count}
      <button onClick={() => dispatch({type: 'decrement'})}>-</button>
      <button onClick={() => dispatch({type: 'increment'})}>+</button>
    </>
  );
}
```

## 5. useCallback

- Condition: Used to memoize functions in functional components.
- Important Points:
  - Prevents unnecessary re-renders of child components that receive the function as a prop.
  - Returns a memoized version of the callback that only changes if one of the dependencies has changed.

Example:
```jsx
import React, { useState, useCallback } from 'react';

function ParentComponent() {
  const [count, setCount] = useState(0);

  const incrementCount = useCallback(() => {
    setCount(prevCount => prevCount + 1);
  }, []);

  return (
    <div>
      <ChildComponent onIncrement={incrementCount} />
      <p>Count: {count}</p>
    </div>
  );
}
```

## 6. useMemo

- Condition: Used to memoize expensive computations in functional components.
- Important Points:
  - Optimizes performance by avoiding unnecessary recalculations.
  - Returns a memoized value that only recomputes when one of the dependencies has changed.

Example:
```jsx
import React, { useMemo } from 'react';

function ExpensiveComponent({ a, b }) {
  const expensiveResult = useMemo(() => {
    // Expensive computation here
    return a * b;
  }, [a, b]);

  return <div>{expensiveResult}</div>;
}
```

## 7. useRef

- Condition: Used to create a mutable reference that persists across re-renders.
- Important Points:
  - Can be used to access DOM elements directly.
  - Doesn't cause re-renders when its value changes.

Example:
```jsx
import React, { useRef, useEffect } from 'react';

function TextInputWithFocusButton() {
  const inputEl = useRef(null);

  const onButtonClick = () => {
    inputEl.current.focus();
  };

  return (
    <>
      <input ref={inputEl} type="text" />
      <button onClick={onButtonClick}>Focus the input</button>
    </>
  );
}
```

## 8. useImperativeHandle

- Condition: Used to customize the instance value that is exposed to parent components when using ref.
- Important Points:
  - Allows you to expose specific functions or properties to the parent component.
  - Used in conjunction with forwardRef.

Example:
```jsx
import React, { useRef, useImperativeHandle, forwardRef } from 'react';

const ChildComponent = forwardRef((props, ref) => {
  const inputRef = useRef();

  useImperativeHandle(ref, () => ({
    focus: () => {
      inputRef.current.focus();
    }
  }));

  return <input ref={inputRef} />;
});

function ParentComponent() {
  const childRef = useRef();

  const handleClick = () => {
    childRef.current.focus();
  };

  return (
    <div>
      <ChildComponent ref={childRef} />
      <button onClick={handleClick}>Focus Input</button>
    </div>
  );
}
```

## 9. useLayoutEffect

- Condition: Similar to useEffect, but fires synchronously after all DOM mutations.
- Important Points:
  - Use this to read layout from the DOM and synchronously re-render.
  - Prefer useEffect when possible to avoid blocking visual updates.

Example:
```jsx
import React, { useLayoutEffect, useState } from 'react';

function Tooltip() {
  const [tooltipHeight, setTooltipHeight] = useState(0);

  useLayoutEffect(() => {
    const tooltip = document.getElementById('tooltip');
    setTooltipHeight(tooltip.clientHeight);
  }, []);

  return (
    <div>
      <div id="tooltip" style={{ position: 'absolute' }}>
        This is a tooltip
      </div>
      <p style={{ marginTop: tooltipHeight }}>Content below tooltip</p>
    </div>
  );
}
```

## 10. useDebugValue

- Condition: Used to display a label for custom hooks in React DevTools.
- Important Points:
  - Helps in debugging custom hooks.
  - Only used in development and has no effect in production.

Example:
```jsx
import React, { useState, useDebugValue } from 'react';

function useCustomHook(initialValue) {
  const [value, setValue] = useState(initialValue);

  useDebugValue(value > 0 ? 'Positive' : 'Zero or Negative');

  return [value, setValue];
}

function Component() {
  const [value, setValue] = useCustomHook(0);

  return (
    <div>
      <p>Value: {value}</p>
      <button onClick={() => setValue(value + 1)}>Increment</button>
    </div>
  );
}
```
