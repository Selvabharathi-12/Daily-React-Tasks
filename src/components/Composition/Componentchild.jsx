import React from 'react'

export default function ComponentChild({ children }) {
  return (
    <div style={{ padding: 8 }}>
      <strong>ComponentChild:</strong> {children}
    </div>
  )
}