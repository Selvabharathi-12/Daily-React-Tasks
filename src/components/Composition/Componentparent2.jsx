import React from 'react'

export default function ComponentParent2({ children }) {
  // forward children to be rendered inside this parent
  return (
    <div style={{ border: '1px dashed #aaa', padding: 8, marginTop: 8 }}>
      {children}
    </div>
  )
}